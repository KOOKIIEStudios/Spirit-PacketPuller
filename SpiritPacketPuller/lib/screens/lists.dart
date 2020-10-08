import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

var logger = Logger(
    printer: PrettyPrinter()
);


// Instantiate InputList
class InputList extends StatefulWidget{
  @override
  InputListState createState(){
    logger.d("Creating state for InputList");
    return new InputListState();
  }
}

// State management for InputList
class InputListState extends State<InputList>{
  //TODO: Add instantiation logic after writing APIs
  List<String> availableFiles = [];

  @override
  Widget build(BuildContext context) {
    logger.d("Building InputList");
    return _inputList();
  }

  Widget _inputList(){
    return ListView.builder(
      itemBuilder: (context, index){
        final element = availableFiles[index];
        return Card(
          child: ListTile(
            title: Text(element),
            onTap: (){
              // TODO: Add logic for adding var element to OutputList
              setState(() {

              });
            },
          ),
        );
      },
    );
  }
}


// Instantiate OutputList
class OutputList extends StatefulWidget{
  @override
  OutputListState createState(){
    logger.d("Creating state for OutputList");
    return new OutputListState();
  }
}

// State management for InputList
class OutputListState extends State<OutputList>{
  List<String> selectedFiles = [];

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