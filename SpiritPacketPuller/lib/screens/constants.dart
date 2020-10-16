// Consolidate constants for ease of reference:

// String constants
// Input/Output Lists
import 'package:flutter/material.dart';

const Map<int, Color> customColour ={
  50:Color.fromRGBO(67,68,110, .1),
  100:Color.fromRGBO(67,68,110, .2),
  200:Color.fromRGBO(67,68,110, .3),
  300:Color.fromRGBO(67,68,110, .4),
  400:Color.fromRGBO(67,68,110, .5),
  500:Color.fromRGBO(67,68,110, .6),
  600:Color.fromRGBO(67,68,110, .7),
  700:Color.fromRGBO(67,68,110, .8),
  800:Color.fromRGBO(67,68,110, .9),
  900:Color.fromRGBO(67,68,110, 1),
};

const MaterialColor customSwatch = MaterialColor(0xFF807D8B, customColour);

final darkTheme = ThemeData(
  primarySwatch: customSwatch,
  primaryColor: Colors.black,
  brightness: Brightness.dark,
  backgroundColor: const Color(0xFF212121),
  accentColor: Colors.white,
  accentIconTheme: IconThemeData(color: Colors.black),
  dividerColor: Colors.black12,
);

const Map<int, Color> customColour2 ={
  50:Color.fromRGBO(67,68,110, .1),
  100:Color.fromRGBO(67,68,110, .2),
  200:Color.fromRGBO(67,68,110, .3),
  300:Color.fromRGBO(67,68,110, .4),
  400:Color.fromRGBO(67,68,110, .5),
  500:Color.fromRGBO(67,68,110, .6),
  600:Color.fromRGBO(67,68,110, .7),
  700:Color.fromRGBO(67,68,110, .8),
  800:Color.fromRGBO(67,68,110, .9),
  900:Color.fromRGBO(67,68,110, 1),
};

const MaterialColor customSwatch2 = MaterialColor(0xFF43446E, customColour2);

final oneDarkDraft = ThemeData(
  primarySwatch: customSwatch2,
  primaryColor: const Color(0xFF281E3C),
  brightness: Brightness.dark,
  backgroundColor: const Color(0xFF212132),
  //canvasColor: const Color(0xFF202034),
  scaffoldBackgroundColor: const Color(0xDF263238),
  //buttonColor: const Color(0xFF818896),
  accentColor: const Color(0xFF56b6c2),
  accentIconTheme: IconThemeData(color: Colors.black),
  dividerColor: const Color(0xFF5C6370),
);

const title = Text(
    'Spirit Pseudocode Analysis Tool Release Candidate v0.2.1-alpha',
    style: titleStyle,
);

const TextStyle titleStyle = TextStyle(
  fontFamily: "Effra",
  fontSize: 20,
  fontWeight: FontWeight.normal,
);

const String inputListLabel = "Files Detected:";
const String outputListLabel = "Files Selected:";

const TextStyle labelStyle = TextStyle(
fontFamily: "GillSans",
fontSize: 18,
fontWeight: FontWeight.bold,
);

const TextStyle statusStyle = TextStyle(
  fontFamily: "Effra",
  fontSize: 15,
  fontWeight: FontWeight.normal,
);

final ButtonStyle buttonStyleBlue = ButtonStyle(
  backgroundColor: MaterialStateProperty.resolveWith<Color>(
        (Set<MaterialState> states) {
      if (states.contains(MaterialState.pressed))
        return const Color(0x7F292638); // half opacity on-click
      return const Color(0xFF292638);
    },
  ),
  foregroundColor: MaterialStateProperty.all(Colors.white),
);

final ButtonStyle buttonStyleGrey = ButtonStyle(
  backgroundColor: MaterialStateProperty.resolveWith<Color>(
        (Set<MaterialState> states) {
      if (states.contains(MaterialState.pressed))
        return const Color(0x7F616161); // half opacity on-click
      return const Color(0xFF616161);
    },
  ),
  foregroundColor: MaterialStateProperty.all(Colors.white),
);

const selectButton = Text("Select All");
const refreshButton = Text("Refresh");
const deselectButton = Text("Deselect All");
enum Radios { normal, all, inheader, outheader }
const normal = Text("Normal Analysis");
const all = Text("Aggressive Analysis");
const inheader = Text("In-header Opcode");
const outheader = Text("Out-packet Analysis");


const String stat = "Status: ";
const String processing = "Status: Processing...";
const process = Text("Process");