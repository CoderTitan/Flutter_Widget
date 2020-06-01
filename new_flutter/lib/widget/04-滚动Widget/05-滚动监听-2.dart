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

  @override
  Widget build(BuildContext context) {
    return NotificationListener(
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
      onNotification: (notification) {
        // 1.判断监听事件的类型
        if (notification is ScrollStartNotification) {
          print('总偏移量 = ${notification.metrics.maxScrollExtent}');
          print('开始滚动------');
        } else if (notification is ScrollUpdateNotification) {
          print('正在滚动, 偏移量 = ${notification.metrics.pixels}');
        } else if (notification is ScrollEndNotification) {
          print('结束滚动-----');
        }
      },
    );
  }
}