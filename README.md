# Spirit PacketPuller
Analyses IDA-generated pseudocode for packet structure and opcodes.

An open-source Flutter-based re-implementation of the GUI implementation of MaplePacketPuller.\
The core engine is loosely based on the an open-source CLI-based sister project: [MaplePacketPuller](https://github.com/Bratah123/MaplePacketPuller).

## Milestones:
Target: | State: |
---|---
GUI Design: | ![100%](https://progress-bar.dev/100)
GUI Logic: | ![100%](https://progress-bar.dev/100)
Core Logic | ![0%](https://progress-bar.dev/0)
Simple Accuracy Test | ![0%](https://progress-bar.dev/0)

Note: Development of core engine (and its testing) are part of a private sister project.\
Spirit PacketPuller will resume development once said sister project has succesfully completed accuracy tests against the original [MaplePacketPuller Project](https://github.com/Bratah123/MaplePacketPuller).

## Platform:
Target Platform: | Tested: |
---|---
Windows 10 Version 2004 | Windows 10 Version 2004

### To be tested by contributors:
Add on to the list as done, if you ran with a previously untested version successfully:
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

1. Install [**Flutter Desktop**](https://flutter.dev/desktop).
2. `Clone`/`Fork` the repository.
3. Navigate to the porject directory in a CLI, and use `flutter pub get` to grab all dependencies.
