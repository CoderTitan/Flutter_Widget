import 'package:flutter/material.dart';



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

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 414,
      height: 600,
      alignment: Alignment.center,
      color: Colors.yellow,
      // decoration: BoxDecoration(),
      foregroundDecoration: BoxDecoration(
        color: Colors.orange,
        border: Border.all(width: 2, color: Colors.red),
        borderRadius: BorderRadius.all(Radius.circular(10))
      ),
    );
  }
}
