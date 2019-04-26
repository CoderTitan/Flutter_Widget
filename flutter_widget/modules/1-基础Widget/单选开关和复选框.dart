import 'package:flutter/material.dart';
import 'dart:io';

void main(List<String> args) => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            // 设置导航栏
            appBar: AppBar(
                title: Text('CoderTitan'),
            ),
            body: MyApp(),
        ),
        theme: ThemeData(
            primarySwatch: Colors.blue
        ),
    );
  }
}


// RaisedButton
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 414.0,
      height: 600.0,
      color: Colors.white12,
      child: Wrap(
        alignment: WrapAlignment.center,
        runAlignment: WrapAlignment.center,
        spacing: 15,
        runSpacing: 15,
children: <Widget>[
  Switch(
    value: false,
    onChanged: (value) {},
    activeColor: Colors.red,
    activeTrackColor: Colors.yellow,
    inactiveThumbColor: Colors.blue,
    inactiveTrackColor: Colors.cyan,
    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap
  ),
  Checkbox(
    value: true,
    onChanged: (value) { },
    activeColor: Colors.orange,
    tristate: true,
  )
],
      )
    );
  }
}


