import 'package:flutter/material.dart';



void main() {
  runApp(
    MyApp()
  );
}


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
      home: HomePage(),
    );
  }
}


class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ChangeNotifierProvider', style: TextStyle(fontSize: 16),)),
      body: Center(
        child: GestureDetector(
          onTapUp: (details) {
            print('手指松开: globalPosition = ${details.globalPosition}, localPosition = ${details.localPosition}');
          },
          onTapDown: (details) {
            print('手指按下, globalPosition = ${details.globalPosition}, localPosition = ${details.localPosition}');
          },
          onTap: () {
            print('点击操作');
          },
          child: Container(
            width: 100,
            height: 100,
            color: Colors.red,
          ),
        )
      ),
    );
  }
}



