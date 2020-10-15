// Status Bar

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/status_bar_model.dart';
import 'constants.dart';

// Instantiate Status Bar
class StatusBar extends StatefulWidget{
  @override
  StatusBarState createState(){
    return new StatusBarState();
  }
}

// State management for Status Bar
class StatusBarState extends State<StatusBar>{
  @override
  Widget build(BuildContext context) {
    return _statusBar();
  }

  Widget _statusBar(){
    return Consumer<StatusBarModel>(
      builder: (context, statusBar, child){
        return Text(
          statusBar.status,
          style: statusStyle,
        );
      },
    );
  }
}
