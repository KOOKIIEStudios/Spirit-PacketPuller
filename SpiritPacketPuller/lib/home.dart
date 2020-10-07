// Home: Main (and only) window.
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

var logger = Logger(
    printer: PrettyPrinter()
);

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: Add mutable List = List from Models (reference)
    // TODO: Add 2 mutable Lists, for storing Input and Output (spread)
    // var list2 = [...list1];

    return Scaffold(
      appBar: AppBar(
        // TODO: Refactor text to a constants file
        title: Text('Spirit Pseudocode Analysis Tool v0.0.1'),
      ),
      body: Text(''),
    );
  }
}