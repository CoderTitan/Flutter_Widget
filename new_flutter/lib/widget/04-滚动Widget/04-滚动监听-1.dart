

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.blue),
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(title: Text('基础Widget', style: TextStyle(fontSize: 15),)),
        body: WidgetMoudle(),
      ),
    );
  }
}


class WidgetMoudle extends StatefulWidget {
  WidgetMoudle({Key key}) : super(key: key);

  @override
  _WidgetMoudleState createState() => _WidgetMoudleState();
}

class _WidgetMoudleState extends State<WidgetMoudle> {

  ScrollController _controller;
  bool _isShowTop = false;

  @override
  void initState() {
    _controller = ScrollController();

    _controller.addListener(() {
      double offset = _controller.offset;
      print('当前滚动偏移量---$offset');
      var tempShow = offset > 1000;
      if (tempShow != _isShowTop) {
        setState(() {
          _isShowTop = tempShow;
        });
      }
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
       child: ListView(
         controller: _controller,
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.all(8),
        itemExtent: 64,
        children: List.generate(100, (index) {
          return ListTile(
            leading: Icon(Icons.keyboard),
            trailing: Icon(Icons.arrow_forward),
            title: Text('第一条数据$index'),
            subtitle: Text('subtitle$index'),
          );
        }),
      ),
    );
  }
}