# Spirit PacketPuller
[**A SPIRIT SUITE TOOL**](https://github.com/KOOKIIEStudios/SpiritSuite)\
Spirit PacketPuller analyses IDA-generated pseudocode for packet structure and opcodes.

An open-source Flutter-based re-implementation of the [GUI implementation](https://github.com/KOOKIIEStudios/Spirit-PacketPuller-OLD) of [MaplePacketPuller](https://github.com/Bratah123/MaplePacketPuller).\
The core analysis logic inherits MaplePacketPuller's in-header opcode extraction logic. Normal and aggressive modes have been re-designed.
An out-header opcode extraction feature may or may not be added in the future.

**NOTE:** *Normal Mode* does not support multiple same-level nested blocks. The decode functions will be extracted correctly, but the indentations will be off. Please use *Aggressive Mode* instead.

## Milestones:
Target: | State: |
---|---
GUI Design: | ![100%](https://progress-bar.dev/100)
GUI Logic: | ![100%](https://progress-bar.dev/100)
Core Logic | ![100%](https://progress-bar.dev/100)
Simple Accuracy Test | ![100%](https://progress-bar.dev/100)

**Current Status:** *Release Candidate 1 (v0.1.1-alpha) is out now!*\
[Download the current pre-release here](https://github.com/KOOKIIEStudios/Spirit-PacketPuller/releases/tag/v0.1.1-alpha)\
**Known issues for building from source:**
  - Currently waiting for the Flutter team to handle a similar problem as described [here](https://github.com/flutter/flutter/issues/66224).

## Platform:
Target Platform: | Tested: |
---|---
Windows 10 Version 2004 | Windows 10 Version 1803

### To be tested by contributors:
*Kindly on to the list as* done, *if you ran with a previously untested version successfully:*
- [ ] Windows 10 1909 or earlier (skip 1803)
- [ ] Windows 8
- [ ] Windows 7

---
# UI
## Initial Draft for GUI Design
![](https://i.imgur.com/OMbChUD.png)

## Prototype GUI
![](https://i.imgur.com/1A5tMq0.png)
**GUI sample updated:** *8th October 2020*

---
# Instructions
## Instructions For Use

This pseudocode analysis tool is intended to be used alongside the **Spirit IDA Plugin**, which allows users to extract pseudocode into text files automatically.

1. Click **Refresh** to get the list of files.
2. Click on items in the `Files Detected` list to **select** them.
    - Similarly click on items in the `Files Selected` list to **deselect** them.
3. Click on the options at the bottom if you would like to use an **advanced** mode.
    - **Normal Analysis** will attempt to extract the packet structure from the provided pseudocode files, and then attempt to beautify them for increased legibility.
        - This mode is only recommended for analysing simple pseudocode.
    - **Agressive Analysis** gives significantly more accurate results, at the cost of aesthetics/legibility.
        - This mode is recommended for more complex pseudocode.
    - **Opcode Analysis** strips out (and retains only) the in-header opcodes for ease of reference.
4. Click `Process` to start analysing.

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
