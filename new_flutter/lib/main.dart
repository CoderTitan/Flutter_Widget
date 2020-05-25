import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(title: Text('基础Widget', style: TextStyle(fontSize: 15),)),
        body: MaterialBtn(),
      ),
      theme: ThemeData(primaryColor: Colors.blue),
    );
  }
}


/**
 * 按钮的类型
 * RaisedButton、
 * FlatButton、
 * OutlineButton
 * IconButton
 */

class MaterialBtn extends StatelessWidget {
  const MaterialBtn({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialButton(
        child: Text('data', style: TextStyle(fontSize: 15, color: Colors.red)),
        onPressed: () => print("object"),
        disabledColor: Colors.grey,
        textColor: Colors.green,
        color: Colors.orange,
        splashColor: Colors.transparent,
        elevation: 20,
        textTheme: ButtonTextTheme.accent,
      ),
    );
  }
}

// RaisedButton、
class RaisePage extends StatelessWidget {
  const RaisePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(

      ),
    );
  }
}
