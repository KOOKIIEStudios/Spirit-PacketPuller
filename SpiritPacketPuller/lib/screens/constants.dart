// Consolidate constants for ease of reference:

// String constants
// Input/Output Lists
import 'package:flutter/material.dart';

const title = Text('Spirit Pseudocode Analysis Tool v0.0.2');

String inputListLabel = "Files Detected:";
String outputListLabel = "Files Selected:";

TextStyle labelStyle = TextStyle(
fontFamily: "GillSans",
fontSize: 16,
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