// Consolidate constants for ease of reference:

// String constants
// Input/Output Lists
import 'package:flutter/material.dart';

const title = Text(
    'Spirit Pseudocode Analysis Tool Release Candidate v0.2.0-alpha',
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
  fontSize: 14,
  fontWeight: FontWeight.normal,
);

const selectButton = Text("Select All");
const refreshButton = Text("Refresh");
const deselectButton = Text("Deselect All");
enum Radios { normal, all, inheader, outheader }
const normal = Text("Normal Analysis");
const all = Text("Aggressive Analysis");
const inheader = Text("Opcode Analysis");
const outheader = Text("Opcode Analysis");


const String stat = "Status: ";
const String processing = "Status: Processing...";
const process = Text("Process");