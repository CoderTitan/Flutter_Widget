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
            body: World(),
        ),
        theme: ThemeData(
            primarySwatch: Colors.blue
        ),
    );
  }
}

class World extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 414.0,
      height: 500.0,
      color: Colors.orange,
      child: Row(
        children: <Widget>[
          Container(width: 80.0, height:80.0, color: Colors.red,),
          Container(width: 80.0, height:80.0, color: Colors.red,),
          Expanded(
            flex: 1,
            child: Container(width: 80.0, height:80.0, color: Colors.blue,),
          ),
          Expanded(
            flex: 1,
            child: Container(width: 80.0, height:80.0, color: Colors.yellow,),
          )
        ],
      ),
    );
  }
}

class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 414.0,
      height: 500.0,
      color: Colors.orange,
      child: Flex(
        direction: Axis.horizontal,
        children: <Widget>[
          new Container(width: 80.0, height:80.0, color: Colors.red,),
          new Container(width: 80.0, height:90.0, color: Colors.green,),
          new Container(width: 80.0, height:100.0, color: Colors.blue,),
        ],

      )
    );
  }
}



/**
 * MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    MainAxisSize mainAxisSize = MainAxisSize.max,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
    TextDirection textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    TextBaseline textBaseline,
    List<Widget> children = const <Widget>[],
 */





