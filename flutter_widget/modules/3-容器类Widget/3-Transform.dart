import 'package:flutter/material.dart';
import 'dart:math' as math;


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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            color: Colors.black,
            child: new Transform(
              alignment: Alignment.topRight, //相对于坐标系原点的对齐方式
              transform: new Matrix4.skewY(0.3), //沿Y轴倾斜0.3弧度
              child: new Container(
                padding: const EdgeInsets.all(8.0),
                color: Colors.deepOrange,
                child: const Text('Apartment for rent!'),
              ),
            ),
          )
        ],
      ),
    );
  }
}

// RotatedBox
class RotatedBoxView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 414,
      height: 600,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          DecoratedBox(
            decoration: BoxDecoration(color: Colors.red),
            child: RotatedBox(
              child: Text("Hello world"),
              quarterTurns: 1,
            ),
          ),
          Text("你好", style: TextStyle(color: Colors.green, fontSize: 18.0),)
        ],
      ),
    );
  }
}

// 矩阵变换后的布局问题
class WarningView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 414,
      height: 600,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          DecoratedBox(
            decoration: BoxDecoration(color: Colors.orange),
            child: Transform.scale(
              scale: 1.5,
              child: Text('Hello world', style:TextStyle(color:Colors.black38, fontSize: 20)),
            ),
          ),
          Text("你好", style: TextStyle(color: Colors.green, fontSize: 18.0),)
        ],
      ),
    );
  }
}


// Transform.rotate, 旋转变换矩阵
class RotateForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          color: Colors.black,
          child: Transform.rotate(
            angle: -math.pi / 4,
            child: Container(
              padding: const EdgeInsets.all(8.0),
              color: const Color(0xFFE8581C),
              child: const Text('https://titanjun.top'),
            ),
          )
        )
      ],
    );
  }
}

// Transform.translate, 平移变换矩阵
class TranslateForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          color: Colors.black,
          child: Transform.translate(
            offset: const Offset(5.0, 15.0),
            child: Container(
              padding: const EdgeInsets.all(8.0),
              color: const Color(0xFF7F7F7F),
              child: const Text('titanjun'),
            ),
          )
        )
      ],
    );
  }
}


// Transform.scale, 缩放矩阵
class ScaleForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          color: Colors.black,
          child: Transform.scale(
            origin: Offset(5, 5),
            scale: 0.5,
            child: Container(
              padding: const EdgeInsets.all(8.0),
              color: const Color(0xFFE8581C),
              child: const Text('Bad Ideas'),
            ),
          )
        )
      ],
    );
  }
}
