// Model for Status Bar
// This is so that we can update the status

import 'package:flutter/material.dart';

class StatusBarModel extends ChangeNotifier{
  // Private internal state of the Status Bar. Stores current status.
  String _status = "Status: Idle";

  // Getter function: Fetch current status (public)
  String get status => _status;

  // Setter function: Sets the current status (public)
  set status(String text){
    _status = text;
    notifyListeners();
  }
}