import 'package:flutter/material.dart';
import 'dart:io';

void main(List<String> args) {
  runApp(
      App()
  );
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
            body: ButtonIcon(),
        ),
        theme: ThemeData(
            primarySwatch: Colors.blue
        ),
    );
  }
}

// ButtonIcon
class ButtonIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Wrap(
      alignment: WrapAlignment.center,
      runAlignment: WrapAlignment.center,
      spacing: 15,
      runSpacing: 15,
children: <Widget>[
RaisedButton.icon(
  label: Text('data'),
  icon: Icon(Icons.mail),
  onPressed: () => {},
  animationDuration: Duration(seconds: 5),
),
FlatButton.icon(
  label: Text('data'),
  icon: Icon(Icons.chat_bubble),
  onPressed: () => {},
),
OutlineButton.icon(
  label: Text('data'),
  icon: Icon(Icons.watch_later),
  onPressed: () => {},
),
      ]
    );
  }
}

// 各种按钮的样式
class ButtonType extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Wrap(
      alignment: WrapAlignment.center,
        runAlignment: WrapAlignment.center,
        spacing: 15,
        runSpacing: 15,
        children: <Widget>[
          RaisedButton(
            child: Text('RaisedButton'),
            onPressed: () => print('RaisedButton'),
          ),
          FlatButton(
            child: Text('FlatButton'),
            onPressed: () => print('FlatButton'),
          ),
          OutlineButton(
            child: Text('OutlineButton'),
            onPressed: () => print('OutlineButton'),
          ),
          IconButton(
            icon: Icon(Icons.mail_outline, color:Colors.orange, size: 40),
            color: Colors.yellow,
            iconSize: 100,
            alignment: Alignment.topLeft,
            onPressed: () => print('IconButton'),
            tooltip: 'titanjun.top',
          )
        ],
    );
  }
}

// RaisedButton和shape的使用
class ShapeButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 414.0,
      height: 500.0,
      color: Colors.white12,
      child: Wrap(
        alignment: WrapAlignment.center,
        runAlignment: WrapAlignment.center,
        spacing: 15,
        runSpacing: 15,
        children: <Widget>[
          // BeveledRectangleBorder
          RaisedButton(
            child: Text('BeveledRectangleBorder'),
            // onPressed: () => print('RaisedButton'),
            shape: BeveledRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              side: BorderSide(
                color: Colors.red,
                width: 2,
                style: BorderStyle.solid
              )
            ),
          ),
          RaisedButton(
            child: Icon(Icons.supervisor_account, color: Colors.green, size: 40),
            onPressed: () => print('RaisedButton'),
            padding: EdgeInsets.all(10),
            shape: CircleBorder(
              side: BorderSide(
                color: Colors.red,
                width: 2,
                style: BorderStyle.solid
              )
            ),
          ),
          RaisedButton(
            child: Text('RoundedRectangleBorder'),
            onPressed: () => print('RaisedButton'),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              side: BorderSide(
                color: Colors.red,
                width: 2,
                style: BorderStyle.solid
              )
            ),
          ),
          RaisedButton(
            child: Text('StadiumBorder'),
            onPressed: () => print('RaisedButton'),
            shape: StadiumBorder(
              side: BorderSide(
                color: Colors.red,
                width: 2,
                style: BorderStyle.solid
              )
            ),
          ),
        ],
      ),
    );
  }
}

// RaisedButton
class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 414.0,
      height: 500.0,
      color: Colors.white12,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment:CrossAxisAlignment.center,
        children: <Widget>[
          RaisedButton(
            child: Text('RaisedButton'),
            onPressed: () => print('RaisedButton'),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(5)),
              side: BorderSide(
                color: Colors.red,
                width: 2,
                style: BorderStyle.solid
              )
            ),
          )
        ]
      )
    );
  }
}


class Material extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 414.0,
      height: 500.0,
      color: Colors.white12,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment:CrossAxisAlignment.center,
        children: <Widget>[
          MaterialButton(
            child: Text('normal'),
            onPressed: () => print('被点击了'),
            // textTheme: ButtonTextTheme.normal,
            textColor: Colors.red,
            // disabledTextColor: Colors.yellow,
            color: Colors.grey[200],
            // disabledColor: Colors.lightGreen,
            // highlightColor: Colors.yellow,
            // splashColor: Colors.orange,
            // colorBrightness: Brightness.light,
            elevation: 0,
            minWidth: 100,
            // highlightElevation: 4,
            // disabledElevation: 7,
            // padding: EdgeInsets.all(10),
            shape: StadiumBorder(side: BorderSide(color: Colors.red, width: 2)),
            // clipBehavior: Clip.hardEdge,
            // minWidth: 100,
            // height: 40,
          ),
          MaterialButton(
            // onPressed: () => print('被点击了'),
            child: Text('accent'),
            color: Colors.grey[200],
            shape: BeveledRectangleBorder(
              side: BorderSide(color: Colors.red),
              borderRadius: BorderRadius.all(Radius.circular(0.0))
            ),
            textTheme: ButtonTextTheme.accent,
          ),
          MaterialButton(
            onPressed: () => print('被点击了'),
            child: Text('primary'),
            color: Colors.grey[200],
            shape: CircleBorder(),
            textTheme: ButtonTextTheme.primary,
          ),
        ],
      )
    );
  }
}

/**
    this.shape,
    this.clipBehavior = Clip.none,
    this.materialTapTargetSize,
    this.animationDuration,
    this.minWidth,
    this.height,
    this.child,
 */


