// Model for Radio Button set
// This is so that we can make the options mutually exclusive

import 'package:flutter/material.dart';
import '../screens/constants.dart';

class RadioModel extends ChangeNotifier{

  // Private internal state of the Radio buttons. Stores operation modes.
  Radios _choice = Radios.normal;

  // Getter function: Fetch selected option
  Radios get choice => _choice;

  // Refresh function. Re-fetches list of available files, and re-builds widget
  set choice(Radios radios){
    _choice = radios;
    notifyListeners();
  }
}