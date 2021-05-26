# Presence detection bla bla
{:.no_toc}

* TOC
{:toc}
## Schematics

![Schematic](pcb_schematic.png)
![Quad Sniffer](pcb_schematic_quad_sniffer.png)
![Single Sniffer](pcb_schematic_single_sniffer.png)

The schematic is split into hierarchical parts. The top level shows the board as basically comprised of two identical modules, connected to a set of in- and output contacts. Those two modules contains four sniffer modules, each of which is connected to a channel of a four channel optocoupler. The other pin of that channel connects directly to the DCC voltage.

The sniffer modules detect current by using two pairs of anti-parallel diodes to allow a DCC signal to propagate. If current flows across those diodes, a voltage drop occurs over the diodes, which triggers the optocoupler. This can be either detected by an MCU or used directly, e.g. to light up an LED.

## BOM
To fully assemble the PCB, the following components are required:

| Component | Qty | Usage | Comment |
---|---|---|---
Screw Terminal, 8pin, 5.08mm pitch | 1 | Connects to the track segments.
Screw Terminal, 2pin, 5.08mm pitch | 1 | Connects to the signal input. | Both pins are shorted so it doesn't matter which one you use.
Pin Header, 8pin, 2.54mm pitch | 1 | Used as logic output. | Male or female. Connected to the collectors of the optocouplers.
Pin Header, 2pin, 2.54mm pitch | 1 | Connected to the emitters of the optocouplers. | Male or female. Both pins are shorted, so technically 1pin would suffice.
4 channel optocoupler (DIP16) | 2 | Triggers when current is detected. Decouples track voltage from logic voltage. | I used LTV 844. Forward voltage needs to be less than half of the diodes' forward voltage.
Rectifier Diodes, THT | 32 | Create voltage drops when current flows through them. | I used BY 550-50. Important characteristics: maximum current > 3A, maximum voltage > track voltage. Forward voltage: see optocouplers.
Resistor (10Ω), THT | 8 | I honestly don't know what those do, maybe limit current flow through optocoupler? I'm not an EE... | 
DIP16 Socket | 2 | If you don't feel comfortable soldering the optocouplers directly to the PCB or want to simplify replacements. | Optional

## Assembly
Assembly is straightforward. Make sure that the diodes and optocouplers are oriented as shown on the PCB's silk screen. If you're unsure about the optocoupler orientation, consult it's datasheet and make sure that the output side points to the upper edge of the PCB. Also, use DIP16 sockets in that case, so you can easily replace a fried optocoupler... 😉