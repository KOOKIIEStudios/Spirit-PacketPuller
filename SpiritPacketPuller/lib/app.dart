// App: the main structure that encloses everything.

import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:provider/provider.dart';
import 'models/input_list_model.dart';
import 'models/output_list_model.dart';
import 'models/radio_model.dart';
import 'models/status_bar_model.dart';
import 'screens/constants.dart';
import 'screens/home.dart';

var logger = Logger(
    printer: PrettyPrinter()
);

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    logger.i("Now fetching the home screen...");
    // Placing this high up to allow addition of status bars
    // and other features in the future
    return MultiProvider(
        providers: [
          ChangeNotifierProvider<InputListModel>(create: (context) => InputListModel()),
          ChangeNotifierProvider<OutputListModel>(create: (context) => OutputListModel()),
          ChangeNotifierProvider<RadioModel>(create: (context) => RadioModel()),
          ChangeNotifierProvider<StatusBarModel>(create: (context) => StatusBarModel()),
        ],
        child: MaterialApp(
          theme: darkTheme, // Set the theme
          //theme: oneDarkDraft, // Set the theme
          home: Home(),
        ),
    );
  }
}