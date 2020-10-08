//

import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:provider/provider.dart';
import '../models/input_list_model.dart';
import '../models/output_list_model.dart';

var logger = Logger(
    printer: PrettyPrinter()
);


// Instantiate InputList
class InputList extends StatefulWidget{
  InputList({Key key}) : super(key: key)

  @override
  InputListState createState(){
    logger.d("Creating state for InputList");
    return new InputListState();
  }
}

// State management for InputList
class InputListState extends State<InputList>{
  @override
  Widget build(BuildContext context) {
    logger.d("Building InputList");
    return _inputList();
  }

  Widget _inputList(){
    return Consumer2<InputListModel, OutputListModel>(
      builder: (context, inputList, outputList, child){
        return ListView.builder(
          itemBuilder: (context, index) {
            List<String> availableFiles = inputList.availableFiles;
            final element = availableFiles[index];
            return Card(
              child: ListTile(
                key: ValueKey(element),
                title: Text(element),
                onTap: () {
                  setState(() {
                    outputList.select(element);
                  });
                },
              ),
            );
          },
        );
      },
    );
  }
}


// Instantiate OutputList
class OutputList extends StatefulWidget{
  OutputList({Key key}) : super(key: key)

  @override
  OutputListState createState(){
    logger.d("Creating state for OutputList");
    return new OutputListState();
  }
}

// State management for InputList
class OutputListState extends State<OutputList>{
  void select(element){
    selectedFiles.add(element);
    selectedFiles.sort();
  }

  @override
  Widget build(BuildContext context) {
    logger.d("Building OutputList");
    return _outputList();
  }

  Widget _outputList(){
    return ListView.builder(
      itemBuilder: (context, index){
        final element = selectedFiles[index];
        return Card(
          child: ListTile(
            key: ValueKey(element),
            title: Text(element),
            onTap: (){
              setState(() {
                selectedFiles.remove(element);
              });
            },
          ),
        );
      },
    );
  }
}


// Contain the 2 lists in a row