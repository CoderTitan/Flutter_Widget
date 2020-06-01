import 'package:flutter/material.dart';
import 'package:new_flutter/douban/pages/main/main_page.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent
      ),
      home: MainWidget(),
    );
  }
}



