import socket
import re
import random

import paho.mqtt.client as mqtt

# https://www.jmri.org/help/en/package/jmri/jmrit/withrottle/Protocol.shtml
# https://github.com/dpcryer/pithrottle/blob/master/pithrottle.py


TCP_IP = "192.168.144.42"
TCP_PORT = 12090

BUFFER_SIZE = 1024

MQTT_BROKER = "192.168.144.2"
MQTT_USER = "mqtt"
MQTT_PASSWORD = ""

class WiThrottleState:
    def __init__(self):
        self.roster = {}
        self.power = False

    def handle_message(self, message):
        if m := re.match("RL(.*)", message):
            print("roster")
        elif m := re.match("PPA(.*)", message):
            print("power")
        elif m := re.match("PPT(.*)", message):
            print("turnout state", message)
        elif m := re.match("PTL(.*)", message):
            print("turnout")
        elif m := re.match("PRL(.*)", message):
            print("route")
        elif m := re.match("PTA(.*)", message):
            print("set turnout")


class MQTTThrottleDevice(mqtt):

    def __init__(self, broker, port = 1883, username: str = None, password: str = None, topic_prefix: str = ""):
        super(f"withrottle2mqtt-{random.randint(0,1000)})")

        self.broker = broker
        self.port = port
        self.username = username
        self.password = password


    def on_connect(self, client, userdata, flags, rc):
        if rc == 0:
            print("Connected to MQTT broker")
        else:
            print("Failed to connect, return code %d", rc)

def main():

    mqtt_adapter = MQTTThrottleDevice()
    mqtt_adapter.username_pw_set(MQTT_USER, MQTT_PASSWORD)

    sock = socket.socket()
    sock.connect((TCP_IP, TCP_PORT))
    sock.settimeout(0.05)

    state = WiThrottleState()

    data = ""
    while True:
        try:
            data += sock.recv(BUFFER_SIZE).decode()
            bits = data.rsplit("\n", 1)

            if len(bits) > 1:
                data = bits[1]
                lines = bits[0].split("\n")
                for line in lines:
                    if line:
                        print(line.strip())
                        state.handle_message(line)

        except TimeoutError:
            print("Timeout")
        except Exception as e:
            print("Excepion: " + str(e))


if __name__ == "__main__":
    main()