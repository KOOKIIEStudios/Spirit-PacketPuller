// App: the main structure that encloses everything.
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'screens/home.dart';

var logger = Logger(
    printer: PrettyPrinter()
);

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    logger.i("Now fetching the home screen...");
    return MaterialApp(
      home: Home(),
    );
  }
}