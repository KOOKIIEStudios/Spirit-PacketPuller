// Home: Main (and only) window.


import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:logger/logger.dart';
import 'lists.dart';
import 'buttons.dart';
import 'constants.dart';

var logger = Logger(
    printer: PrettyPrinter()
);

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
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
          // Row to hold 2 labels of lists:
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                inputListLabel,
                style: labelStyle,
              ),
              Text(
                outputListLabel,
                style: labelStyle,
              ),
            ],
          ),
          // Row to hold 2 lists
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
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
                      Expanded(
                        flex: 2,
                        child: ButtonsBar()
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          height: 20,
                          child: Row(
                            children: [
                              // TODO:: Add Radio logic
                              RadioNormal(),
                              RadioAll(),
                              RadioOpcode(),
                            ],
                          ),
                        ),
                      ),
                      // Space the bottom out
                      Expanded(
                        child: Container(
                          height: 8,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              ProcessButton(),
            ],
          ),
        ],
      ),
    );
  }
}