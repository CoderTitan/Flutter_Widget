import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(App());
}


class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            // 设置导航栏
            appBar: AppBar(
                title: Text('CoderTitan'),
            ),
            body: PositionedHello(),
        ),
        theme: ThemeData(
            primarySwatch: Colors.blue
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
      child: Stack(
        // alignment: AlignmentDirectional.center,
        alignment: AlignmentDirectional(0.8, 0.8),
        textDirection: TextDirection.ltr,
        fit: StackFit.loose,
        overflow: Overflow.visible,
        children: <Widget>[
          Container(width: 100.0, height:100.0, color: Colors.red),
          Container(width: 100.0, height:100.0, color: Colors.yellow),
          // Container(width: 100.0, height:100.0, color: Colors.blue),
          // Container(width: 100.0, height:100.0, color: Colors.cyan),
          // Container(width: 100.0, height:100.0, color: Colors.pink)
        ],
      )
    );
  }
}

class PositionedHello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 414.0,
      height: 500.0,
      color: Colors.orange,
child: Stack(
  alignment: AlignmentDirectional.center,
  children: <Widget>[
    // 这个widget会根据alignment的设置展示
    Container(child: Text('https', style: TextStyle(color: Colors.red)), color: Colors.yellow,),
    // 这个widget会根据left和top和width的设置显示和alignment无关了
    Positioned(
      left: 10,
      top: 30,
      width: 80,
      child: Container(width: 100.0, height:100.0, color: Colors.red),
    ),
    Positioned(
      right: 10,
      bottom: 50,
      child: Container(width: 100.0, height:100.0, color: Colors.blue),
    )
  ],
),
    );
  }
}



/**
 * 
Stack({
  Key key,
  this.alignment = AlignmentDirectional.topStart,
  this.textDirection,
  this.fit = StackFit.loose,
  this.overflow = Overflow.clip,
  List<Widget> children = const <Widget>[],
})
 */


/**
 * Wrap({
    Key key,
    this.direction = Axis.horizontal,
    this.alignment = WrapAlignment.start,
    this.spacing = 0.0,
    this.runAlignment = WrapAlignment.start,
    this.runSpacing = 0.0,
    this.crossAxisAlignment = WrapCrossAlignment.start,
    this.textDirection,
    this.verticalDirection = VerticalDirection.down,
    List<Widget> children = const <Widget>[],
  })
 */





