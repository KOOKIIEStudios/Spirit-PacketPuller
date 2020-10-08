// Model for Output List
// This is so that we can add/remove to/from the list of selected files

import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

var logger = Logger(
    printer: PrettyPrinter()
);

class OutputListModel extends ChangeNotifier{
  // Private internal state of the Input List. Stores names of files.
  final List<String> _fileList = [];

  // Getter function: Fetch list of files (public)
  List<String> get selectedFiles => _fileList;

  // Select All function. Copies all files in Input List into Output List
  void selectAll(List<String> availableFiles){
    logger.d("Selecting all files from Input List");
    _fileList.clear();
    _fileList.addAll(availableFiles);
    notifyListeners();
  }

  // Deselect All function. Clears list of selected files, and re-builds widget
  void clearList(){
    logger.d("Clearing all files from Output List");
    _fileList.clear();
    notifyListeners();
  }

  // Add function. Adds file from Input List into Output List
  void select(String file){
    if(!_fileList.contains(file)){
      logger.d("File $file selected!");
      _fileList.add(file);
      _fileList.sort();
      notifyListeners();
    }
    else{
      logger.d("File $file already exists in Output List!");
    }
  }

  // Remove function. Removes file from Output List
  void remove(String file){
    logger.d("Removing file $file !");
    _fileList.remove(file);
  }
}