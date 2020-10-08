// ButtonBar and row of Radio buttons for use in home.dart
// NOTE: RADIO SHOULD BE STATEFUL https://api.flutter.dev/flutter/material/Radio-class.html
//
// Radio.value: The value represented by this radio button - use a const
// Radio.groupValue: The currently selected value for a group of radio buttons - use a private var
//
// enum Obj { value1, value2 }
// SET DEFAULT OPTION INSIDE OF CLASS:
// Obj _option = Obj.value1
//
// HANDLE ON-CLICK:
// onChanged: (Obj value){
//  setState(() {
//    _privateVar = value;
//  });
// },

// THIS IS A PLACEHOLDER FILE

import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'constants.dart';

var logger = Logger(
    printer: PrettyPrinter()
);

class ButtonsBar extends StatelessWidget{
  Widget build(BuildContext context){
    logger.d("Building Button Bar");
    return ButtonBar(
      // Row for Select/Refresh/Deselect buttons
      mainAxisSize: MainAxisSize.max,
      alignment: MainAxisAlignment.start,
      buttonHeight: 60,
      buttonMinWidth: 300,
      buttonPadding: const EdgeInsets.only(left: 20),
      children: [
        // TODO: Refactor text to a constants file
        // TODO: Add button logic
        OutlinedButton(onPressed: null, child: Text("Select All")),
        OutlinedButton(onPressed: null, child: Text("Refresh")),
        OutlinedButton(onPressed: null, child: Text("Deselect All")),
      ],
    );
  }
}

class RadioNormal extends StatelessWidget{
  Widget build(BuildContext context){
    logger.d("Building Radio Button 1");
    return Container(
      alignment: Alignment.centerLeft,
      height: 20,
      width: 220,
      child: ListTile(
        dense: true,
        title: normal,
        leading: Radio(
            value: null,
            groupValue: null,
            onChanged: null
        ),
      ),
    );
  }
}

class RadioAll extends StatelessWidget{
  Widget build(BuildContext context){
    logger.d("Building Radio Button 1");
    return Container(
      alignment: Alignment.centerLeft,
      height: 20,
      width: 230,
      child: ListTile(
        dense: true,
        title: all,
        leading: Radio(
            value: null,
            groupValue: null,
            onChanged: null
        ),
      ),
    );
  }
}

class RadioOpcode extends StatelessWidget{
  Widget build(BuildContext context){
    logger.d("Building Radio Button 1");
    return Container(
      alignment: Alignment.centerLeft,
      height: 20,
      width: 220,
      child: ListTile(
        dense: true,
        title: opcode,
        leading: Radio(
            value: null,
            groupValue: null,
            onChanged: null
        ),
      ),
    );
  }
}

// TODO: Add function to onPressed parameter
class ProcessButton extends StatelessWidget{
  Widget build(BuildContext context){
    logger.d("Building Process Button");
    return Container(
      alignment: Alignment.bottomRight,
      padding: const EdgeInsets.only(top: 30, right: 20),
      child: SizedBox(
        height: 40,
        width: 140,
        child: ElevatedButton(
          onPressed: null,
          child: process,
        ),
      ),
    );
  }
}
