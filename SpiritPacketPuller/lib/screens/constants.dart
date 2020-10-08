// Consolidate constants for ease of reference:

// String constants
// Input/Output Lists
import 'package:flutter/material.dart';

String inputListLabel = "Files Detected:";
String outputListLabel = "Files Selected:";

TextStyle labelStyle = TextStyle(
fontFamily: "GillSans",
fontSize: 16,
fontWeight: FontWeight.bold,
);

enum Radios { normal, all, opcode }
const normal = Text("Normal Analysis");
const all = Text("Aggressive Analysis");
const opcode = Text("Opcode Analysis");

const process = Text("Process");