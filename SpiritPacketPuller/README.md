# SpiritPacketPuller

An experimental Flutter project.

## Objective

This Flutter implementation mostly handles the View-Controller side of things.  
A packet analysis engine is imported as a library to handle the data.

## Structure

### SpiritPacketPuller\lib\
`Spirit-PacketPuller\SpiritPacketPuller\lib\main.dart`  
**main** initialises and calls **app** to start building the application.  
`Spirit-PacketPuller\SpiritPacketPuller\lib\app.dart`  
**app** consists of a set of providers. This allows children (and grandchildren, etc) to get and set variables in an event-driven way.  

### SpiritPacketPuller\lib\screens
`Spirit-PacketPuller\SpiritPacketPuller\lib\screens\home.dart`  
**app** calls **home** which is the main window.  
**home** has interactable **lists** as well as **buttons**; their constants (e.g. strings for labels) are stored in **constants**.  
`Spirit-PacketPuller\SpiritPacketPuller\lib\screens\lists.dart`  
`Spirit-PacketPuller\SpiritPacketPuller\lib\screens\buttons.dart`  
`Spirit-PacketPuller\SpiritPacketPuller\lib\screens\constants.dart`  

### SpiritPacketPuller\lib\models
`Spirit-PacketPuller\SpiritPacketPuller\lib\models\input_list_model.dart`  
Input List from **lists** are modeled in **input_list_model**. This is where data is stored and handled.  
`Spirit-PacketPuller\SpiritPacketPuller\lib\models\output_list_model.dart`  
Output List from **lists** are modeled in **output_list_model**. This is where data is stored and handled.  
`Spirit-PacketPuller\SpiritPacketPuller\lib\models\radio_model.dart`  
Radio buttons from **buttons** are modeled in **radio_model**. This is where data is stored and handled.  

### Assets
`Spirit-PacketPuller\SpiritPacketPuller\assets\`  
The **assets** folder is intended for future use. At the time of writing, the plugin required to use it is broken.  
`Spirit-PacketPuller\SpiritPacketPuller\fonts\`  
The **fonts** folder stores custom fonts used by the project.
