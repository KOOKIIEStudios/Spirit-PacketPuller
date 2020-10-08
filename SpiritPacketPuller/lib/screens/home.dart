// Home: Main (and only) window.

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:logger/logger.dart';
import 'lists.dart';

var logger = Logger(
    printer: PrettyPrinter()
);

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: Add mutable List = List from Models (reference)
    // TODO: Add 2 mutable Lists, for storing Input and Output (spread)
    // var list2 = [...list1];
    logger.d("Start building Home");
    return Scaffold(
      appBar: AppBar(
        // TODO: Refactor text to a constants file
        title: Text('Spirit Pseudocode Analysis Tool v0.0.1'),
      ),
      body:
      // Main column holding everything
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // TODO: Insert the 2 lists
              Text(
                "Files Detected:",
                style: TextStyle(
                  fontFamily: "GillSans",
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Files Selected:",
                style: TextStyle(
                  fontFamily: "GillSans",
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          // Row to hold 2 lists
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            // coloured boxes as placeholders for lists
            children: [
              Expanded(
                child: Container(
                  height: 500,
                  child: InputList(),
                ),
              ),
              Expanded(
                child: Container(
                  height: 500,
                  child: OutputList(),
                ),
              ),
            ],
          ),
          // Holds other interactive components that are below the lists
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  width: 300,
                  height: 106,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      // TODO: Refactor out ButtonBar
                      Expanded(
                        child: ButtonBar(
                          // Row for Select/Refresh/Deselect buttons
                          mainAxisSize: MainAxisSize.min,
                          alignment: MainAxisAlignment.start,
                          buttonHeight: 60,
                          buttonMinWidth: 300,
                          buttonPadding: const EdgeInsets.only(left: 8, right: 30),
                          children: [
                            // TODO: Refactor text to a constants file
                            // TODO: Add button logic
                            TextButton(onPressed: null, child: Text("Select All")),
                            TextButton(onPressed: null, child: Text("Refresh")),
                            TextButton(onPressed: null, child: Text("Deselect All")),
                          ],
                        ),
                      ),
                      // TODO: Refactor out radio buttons
                      Expanded(
                        child: Container(
                          height: 40,
                          child: Row(
                            children: [
                              // TODO: Refactor text to a constants file
                              // TODO:: Add Radio logic
                              Container(
                                alignment: Alignment.centerLeft,
                                height: 40,
                                width: 220,
                                child: ListTile(
                                  title: const Text("Normal Analysis"),
                                  leading: Radio(
                                      value: null,
                                      groupValue: null,
                                      onChanged: null
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                height: 40,
                                width: 230,
                                child: ListTile(
                                  title: const Text("Aggressive Analysis"),
                                  leading: Radio(
                                      value: null,
                                      groupValue: null,
                                      onChanged: null
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                height: 40,
                                width: 220,
                                child: ListTile(
                                  title: const Text("Opcode Analysis"),
                                  leading: Radio(
                                      value: null,
                                      groupValue: null,
                                      onChanged: null
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              /*


               */
              // TODO: Add function to onPressed parameter
              Container(
                alignment: Alignment.bottomRight,
                padding: const EdgeInsets.all(10),
                child: ElevatedButton(onPressed: null, child: Text("Process")),
              )
            ],
          )
          ,
        ],
      ),
    );
  }
}