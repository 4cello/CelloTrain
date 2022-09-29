import json
import socket
import re
import random

from enum import Enum

import paho.mqtt.client as mqtt

# https://www.jmri.org/help/en/package/jmri/jmrit/withrottle/Protocol.shtml
# https://github.com/dpcryer/pithrottle/blob/master/pithrottle.py


TCP_IP = "192.168.144.42"
TCP_PORT = 12090

BUFFER_SIZE = 1024

MQTT_BROKER = "192.168.144.2"
MQTT_USER = "mqtt"
MQTT_PASSWORD = "jY2gnm5G"

WITHROTTLE_SEND_QUEUE = []

class HAEntity(Enum):
    POWER_SWITCH = 1
    TRAIN_SELECT = 2
    SPEED_CONTROL = 3

class MQTTThrottleDevice(mqtt.Client):

    def __init__(self, broker, port = 1883, username: str = None, password: str = None, 
            topic_prefix: str = "homeassistant/"):
        mqtt.Client.__init__(self, f"withrottle2mqtt-{random.randint(0,1000)})")

        self.broker = broker
        self.port = port
        self.username = username
        self.password = password
        self.topic_prefix = topic_prefix

        self.discovery = self.build_discovery()

    def on_connect(self, client, userdata, flags, rc):
        if rc == 0:
            print("Connected to MQTT broker")
            for entity in self.discovery.values():
                self.send_discovery(entity)
            POWER_CMD_TOPIC = self.topic_prefix.strip("/") + "/switch/train_controller_layout_power/set"

            def recv_power(c,u,m: mqtt.MQTTMessage):
                global WITHROTTLE_SEND_QUEUE
                p = m.payload.decode()
                WITHROTTLE_SEND_QUEUE.append("PPA1" if p == "ON" else "PPA0")
            self.message_callback_add(POWER_CMD_TOPIC, recv_power)
            self.subscribe(POWER_CMD_TOPIC)
        else:
            print("Failed to connect, return code %d", rc)

    def send_power(self, power):
        entity = self.discovery[HAEntity.POWER_SWITCH]
        base_topic = entity["~"]
        topic = entity["state_topic"].replace("~", base_topic)
        if power is None:
            payload = "UNKNOWN"
        else:
            payload = "ON" if power else "OFF"
        self.publish(topic=topic, payload=payload)

    def update_roster(self, roster):
        entity = self.discovery[HAEntity.TRAIN_SELECT]
        options = entity["options"]
        for n,r in roster.items():
            options.append(r["friendly_name"])
        self.send_discovery(entity)
        if len(roster) > 0:
            base_topic = entity["~"]
            topic = entity["state_topic"].replace("~", base_topic)
            self.publish(topic=topic, payload=roster[next(iter(roster))]["friendly_name"])

    def build_discovery(self):
        entities = {}
        prefix = self.topic_prefix.strip("/")
        device_prefix = "train_controller"
        device = dict(
            identifiers=device_prefix,
            manufacturer="4cello",
            name="Train Controller",
            sw_version="0.9"
        )
        base_entity = dict(
            cmd_t="~/set",
            state_topic="~/state",
            device=device
        )

        # Power Switch
        power_obj_id = device_prefix + "_layout_power"
        power_prefix = prefix + "/switch/" + power_obj_id
        power_switch = dict(
            name="Track Power",
            object_id=power_obj_id,
            unique_id=power_obj_id,
            conf_t=power_prefix + "/config",
            **base_entity
        )
        power_switch["~"] = power_prefix
        entities[HAEntity.POWER_SWITCH] = power_switch

        # Train select
        ts_obj_id = device_prefix + "_trains"
        ts_prefix = prefix + "/select/" + ts_obj_id
        train_select = dict(
            name="Train Roster",
            object_id=ts_obj_id,
            unique_id=ts_obj_id,
            conf_t=ts_prefix + "/config",
            options=[],
            **base_entity
        )
        train_select["~"] = ts_prefix
        entities[HAEntity.TRAIN_SELECT] = train_select

        # Train Speed Control
        sc_obj_id = device_prefix + "_train_speed"
        sc_prefix = prefix + "/number/" + sc_obj_id
        speed_control = dict(
            name="Active Train Speed",
            object_id=sc_obj_id,
            unique_id=sc_obj_id,
            conf_t=sc_prefix + "/config",
            min="-100",
            max="100",
            mode="slider",
            **base_entity
        )
        speed_control["~"] = sc_prefix
        entities[HAEntity.SPEED_CONTROL] = speed_control

        return entities

    def send_discovery(self, entity):
        config_topic = entity["conf_t"]
        self.publish(topic=config_topic, payload=json.dumps(entity), retain=False) # todo: RETAIN


class WiThrottleState:
    def __init__(self, mqtt_adapter):
        self.power = None
        self.mqtt_adapter = mqtt_adapter

    def handle_message(self, message):
        if m := re.match("RL([0-9]+)(.*)", message):
            parse = re.search('RL([0-9]+)\\]\\\\\[(.*)', message)
            self.roster = {}
            if int(parse.group(1)) > 0:
                for entry in parse.group(2).split(']\['):
                    name, address, long = entry.split('}|{')
                    friendly = name.replace("_", " ").capitalize()
                    self.roster[name] = dict(
                        name=name,
                        friendly_name=friendly,
                        address=int(address),
                        long=(long == "L")
                    )
            self.mqtt_adapter.update_roster(self.roster)
            
        elif m := re.match("PPA([012])", message):
            prev_power = self.power
            p = int(m.groups(1)[0])
            if p >= 2:
                # TODO: handle undefined?
                return
            self.power = (p == 1)
            if self.power != prev_power:
                self.mqtt_adapter.send_power(p)
        elif m := re.match("PPT(.*)", message):
            print("turnout state", message)
        elif m := re.match("PTL(.*)", message):
            print("turnout")
        elif m := re.match("PRL(.*)", message):
            print("route")
        elif m := re.match("PTA(.*)", message):
            print("set turnout")


def main():
    global WITHROTTLE_SEND_QUEUE
    mqtt_adapter = MQTTThrottleDevice(MQTT_BROKER)
    mqtt_adapter.username_pw_set(MQTT_USER, MQTT_PASSWORD)
    mqtt_adapter.connect(host=MQTT_BROKER)
    mqtt_adapter.loop_start()

    sock = socket.socket()
    sock.connect((TCP_IP, TCP_PORT))
    sock.settimeout(0.05)

    state = WiThrottleState(mqtt_adapter)

    data = ""
    while True:
        try:
            for _ in range(len(WITHROTTLE_SEND_QUEUE)):
                cmd = WITHROTTLE_SEND_QUEUE.pop(0) + "\n"
                sock.send(cmd.encode())

            data += sock.recv(BUFFER_SIZE).decode()
            bits = data.rsplit("\n", 1)

            if len(bits) > 1:
                data = bits[1]
                lines = bits[0].split("\n")
                for line in lines:
                    if line:
                        print(line.strip())
                        state.handle_message(line)
        except socket.timeout:
            pass
        except Exception as e:
            print("Exception: " + str(e))
            break


if __name__ == "__main__":
    main()