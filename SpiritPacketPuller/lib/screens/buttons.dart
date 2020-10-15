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

import 'package:SpiritPacketPuller/models/radio_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';
import 'constants.dart';
import '../models/input_list_model.dart';
import '../models/output_list_model.dart';
import 'package:packet_analyser_engine/packet_analyser_engine.dart' as engine;

var logger = Logger(
    printer: PrettyPrinter()
);

class ButtonsBar extends StatelessWidget{
  Widget build(BuildContext context){
    logger.d("Building Button Bar");
    return Consumer2<InputListModel, OutputListModel>(
        builder: (context, inputList, outputList, child){
          return ButtonBar(
            // Row for Select/Refresh/Deselect buttons
            mainAxisSize: MainAxisSize.max,
            alignment: MainAxisAlignment.start,
            buttonHeight: 60,
            buttonMinWidth: 300,
            buttonPadding: const EdgeInsets.only(left: 20),
            children: [
              OutlinedButton(
                  onPressed: () => outputList.selectAll(inputList.availableFiles),
                  child: selectButton
              ),
              OutlinedButton(
                  onPressed: () {
                    inputList.refreshList();
                    outputList.clearList();
                  },
                  child: refreshButton
              ),
              OutlinedButton(
                  onPressed: () => outputList.clearList(),
                  child: deselectButton
              ),
            ],
          );
        }
    );
  }
}

// Radio set
class RadioSet extends StatefulWidget {
  RadioSet({Key key}) : super(key: key);

  @override
  RadioSetState createState(){
    logger.d("Creating state for Radio buttons");
    return new RadioSetState();
  }
}

// State management for Radio buttons
class RadioSetState extends State<RadioSet>{
  @override
  Widget build(BuildContext context) {
    logger.d("Building Radio Set");
    return _radios();
  }

  Widget _radios(){
    return Consumer<RadioModel>(
        builder: (context, radioSet, child){
          return Container(
            height: 20,
            child: Row(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  height: 20,
                  width: 220,
                  child: ListTile(
                    dense: true,
                    title: normal,
                    leading: Radio(
                      value: Radios.normal,
                      groupValue: radioSet.choice,
                      onChanged: (Radios value){
                        setState(() {
                          logger.d("Radio1 Clicked!");
                          radioSet.choice = value;
                        });
                      }
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  height: 20,
                  width: 230,
                  child: ListTile(
                    dense: true,
                    title: all,
                    leading: Radio(
                        value: Radios.all,
                        groupValue: radioSet.choice,
                        onChanged: (Radios value){
                          setState(() {
                            logger.d("Radio2 Clicked!");
                            radioSet.choice = value;
                          });
                        }
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  height: 20,
                  width: 220,
                  child: ListTile(
                    dense: true,
                    title: opcode,
                    leading: Radio(
                        value: Radios.opcode,
                        groupValue: radioSet.choice,
                        onChanged: (Radios value){
                          setState(() {
                            logger.d("Radio2 Clicked!");
                            radioSet.choice = value;
                          });
                        }
                    ),
                  ),
                ),
              ],
            ),
          );
        }
    );
  }
}

// TODO: Add status to onPressed parameter
class ProcessButton extends StatelessWidget{
  Widget build(BuildContext context){
    logger.d("Building Process Button");
    return Container(
      alignment: Alignment.bottomRight,
      padding: const EdgeInsets.only(top: 30, right: 20),
      child: SizedBox(
        height: 40,
        width: 140,
        child: Consumer2<OutputListModel, RadioModel>(
          builder: (context, outputList, radioSet, child){
            return ElevatedButton(
              onPressed: () async {
                // API functions to go here:
                await engine.process(
                    outputList.selectedFiles,
                    describeEnum(radioSet.choice)
                );
                outputList.clearList();
              },
              child: process,
            );
          }
        ),
      ),
    );
  }
}
