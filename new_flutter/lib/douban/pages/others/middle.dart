
import 'package:flutter/material.dart';



class MiddlePage extends StatelessWidget {
  const MiddlePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('课程', style: TextStyle(fontSize: 15, color: Colors.white)),
      ),
      body: Container(
        child: Text('middle'),
      ),
    );
  }
}