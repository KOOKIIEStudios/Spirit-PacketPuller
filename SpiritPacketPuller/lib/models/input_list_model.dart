// Model for Input List
// This is so that we can refresh the list of available files

import 'package:flutter/material.dart';

class InputListModel extends ChangeNotifier{
  // TODO: Add instantiation logic after writing APIs (import+sort function)
  // Private internal state of the Input List. Stores names of files.
  final List<String> _fileList = ["Lorem ipsum dolor sit amet,",
    "consectetur adipiscing elit,",
    "sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."];

  // Getter function: Fetch list of files (public)
  List<String> get availableFiles => _fileList;

  // Getter function: Fetch length of list (public)
  int get length => _fileList.length;

  // Refresh function. Re-fetches list of available files, and re-builds widget
  void refreshList(){
    _fileList.clear();
    // TODO: Add import logic after writing APIs
    // Dummy placeholder text to let me verify that the widget is re-built:
    _fileList.add("REFRESHED LIST");
    notifyListeners();
  }
}