import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';



void main(List<String> args) => runApp(MyApp());

class MyApp extends StatelessWidget {
  ScrollController _controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            // 设置导航栏
            appBar: AppBar(
                title: Text('CoderTitan1'),
            ),
            body: Text('data'),
        ),
        theme: ThemeData(
            primarySwatch: Colors.blue
        ),
    );
  }
}

