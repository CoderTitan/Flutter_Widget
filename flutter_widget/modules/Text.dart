import 'package:flutter/material.dart';

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
            body: TextSpanMore(),
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
      height: 300.0,
      color: Colors.green,
      child: Text(
            // 需要显示的文字
            'titanjun.top' * 3,
            textAlign: TextAlign.left,
            textDirection: TextDirection.ltr,
            locale: Locale('CH'),
            maxLines: 1,
            overflow: TextOverflow.fade,
            style: TextStyle(
                inherit: true,
                color: Colors.red,
                fontSize: 50,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                letterSpacing: 2,
                wordSpacing: 5,
                textBaseline: TextBaseline.alphabetic,
                height: 2,
                locale: Locale('CH'),
                decoration: TextDecoration.lineThrough,
                decorationColor: Colors.blue,
                decorationStyle: TextDecorationStyle.wavy,
            ),
        ),
    );
  }
}

class TextSpanMore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 414.0,
        height: 300.0,
        color: Colors.white30,
        child: Text.rich(
            TextSpan(
              text: '博客地址: ',
              children: [
                TextSpan(
                  text: 'https://',
                  style: TextStyle(color: Colors.red)
                ),
                TextSpan(
                  text: 'titanjun.top',
                  style: TextStyle(color: Colors.blue),
                ),
                TextSpan(
                  text: '欢迎访问',
                  style: TextStyle(color: Colors.orange)
                ),
              ]
            ),
        ),
    );
  }
}








