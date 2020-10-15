// Consolidate constants for ease of reference:

// String constants
// Input/Output Lists
import 'package:flutter/material.dart';

const title = Text(
    'Spirit Pseudocode Analysis Tool Release Candidate v0.1.1-alpha',
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

const selectButton = Text("Select All");
const refreshButton = Text("Refresh");
const deselectButton = Text("Deselect All");
enum Radios { normal, all, opcode }
const normal = Text("Normal Analysis");
const all = Text("Aggressive Analysis");
const opcode = Text("Opcode Analysis");

const process = Text("Process");