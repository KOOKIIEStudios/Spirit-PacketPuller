// Model for Input List
// This is so that we can refresh the list of available files

import 'package:flutter/material.dart';
import 'dart:async';
import 'package:logger/logger.dart';
import 'package:packet_analyser_engine/packet_analyser_engine.dart';

var logger = Logger(
    printer: PrettyPrinter()
);

class InputListModel extends ChangeNotifier{
  // Private internal state of the Input List. Stores names of files.
  Future inputListFuture;
  final List<String> _fileList = ["Hit the refresh button to see",
    "the list of files that can be processed.",
    "Click on a file to select it."];

  // Getter function: Fetch list of files (public)
  List<String> get availableFiles => _fileList;

  // Getter function: Fetch length of list (public)
  int get length => _fileList.length;

  // Uses API function here
  // Refresh function. Re-fetches list of available files, and re-builds widget
  Future refreshList() async {
    _fileList.clear();
    List<String> _temp = await getFiles();
    _fileList.addAll(_temp);
    _fileList.sort();
    notifyListeners();
  }
}
