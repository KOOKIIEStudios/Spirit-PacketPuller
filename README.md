# Spirit PacketPuller
[**A SPIRIT SUITE TOOL**](https://github.com/KOOKIIEStudios/SpiritSuite)\
Spirit PacketPuller analyses IDA-generated pseudocode for packet structure and opcodes.

An open-source Flutter-based re-implementation of the [GUI implementation](https://github.com/KOOKIIEStudios/Spirit-PacketPuller-OLD) of [MaplePacketPuller](https://github.com/Bratah123/MaplePacketPuller).\
<del>The core analysis engine is loosely based on the an open-source CLI-based sister project: [MaplePacketPuller](https://github.com/Bratah123/MaplePacketPuller).</del>
The core analysis logic now only inherits in-header opcode extarction logic. Normal and aggressive modes have been re-designed.

## Milestones:
Target: | State: |
---|---
GUI Design: | ![100%](https://progress-bar.dev/100)
GUI Logic: | ![100%](https://progress-bar.dev/100)
Core Logic | ![50%](https://progress-bar.dev/50)
Simple Accuracy Test | ![0%](https://progress-bar.dev/0)

**Current Status:** *HALTED! Awaiting completiong of PacketAnalyserEngine*\
**Note:** Development of the core analysis engine used in this project (and its testing) are a part of a private sister project.\
Spirit PacketPuller will resume development once said sister project has succesfully completed accuracy tests against the original [MaplePacketPuller Project](https://github.com/Bratah123/MaplePacketPuller).

## Platform:
Target Platform: | Tested: |
---|---
Windows 10 Version 2004 | Windows 10 Version 2004

### To be tested by contributors:
*Kindly on to the list as* done, *if you ran with a previously untested version successfully:*
- [ ] Windows 10 1909 or earlier
- [ ] Windows 8
- [ ] Windows 7

---
# UI
## Initial Draft for GUI Design
![](https://i.imgur.com/OMbChUD.png)

## Prototype GUI
![](https://i.imgur.com/1A5tMq0.png)
**GUI updated:** *8th October 2020*

---
# Instructions
## Instructions For Use
1. Click on items in the `Files Detected` list to **select** them.
    - Similarly click on items in the `Files Selected` list to **deselect** them.
2. Click on the options at the bottom if you would like to use an **advanced** mode.
    - **Normal Analysis** will attempt to extract the packet structure from the provided pseudocode files, and then attempt to beautify them for increased legibility.
    - **Agressive Analysis** may give more accurate results, but have poor aesthetics/legibility.
    - **Opcode Analysis** strips out (and retains only) the in-header opcodes for ease of reference.
3. Click `Process` to start analysing.

---

## Instructions To Build
**WARNING: THIS PROJECT IS INTENDED TO RUN ON WINDOWS ONLY!**\
The Flutter Desktop builds are currently experimental and in either Alpha or (in the case of Linux) Beta testing stages.\
At the moment, they may only be build on the target platform.\
**Windows 10 Version 2004 is the official target platform for this project.**

Refer to the inner [README](https://github.com/KOOKIIEStudios/Spirit-PacketPuller/tree/main/SpiritPacketPuller) for an overview of the folder structure.

1. Install [**Flutter Desktop**](https://flutter.dev/desktop).
2. `Clone`/`Fork` the repository.
3. Navigate to the porject directory in a CLI *(I use PowerShell 7)*, and use command `flutter pub get` to grab all dependencies.

---
## API Documentation
**Closed-source Library:** Packet Structure Extraction Engine

### Included Sub-libraries
![](https://i.imgur.com/OQc0sGX.png)
---
### Outward-facing API
![](https://i.imgur.com/8q6v8uB.png)
---
![](https://i.imgur.com/DQWop8j.png)
---
![](https://i.imgur.com/ruVJMtW.png)