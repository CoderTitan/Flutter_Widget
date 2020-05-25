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
    return DecoratedBox(
          decoration: BoxDecoration(
          color: Colors.yellow,
          image: DecorationImage(
            image: NetworkImage('https://titanjun.oss-cn-hangzhou.aliyuncs.com/flutter/flutter_layout.png?x-oss-process=style/titanjun'),
            colorFilter: ColorFilter.mode(Colors.orange.withOpacity(0.5), BlendMode.dst),
            fit: BoxFit.contain,
            alignment: Alignment.center,
            repeat: ImageRepeat.noRepeat,
            matchTextDirection: false,
          ),
          border: Border.all(color: Colors.red, width: 2),
          // borderRadius: BorderRadius.all(Radius.circular(5)),
          boxShadow: [
            BoxShadow(color: Colors.grey, offset: Offset(-5, -5), blurRadius: 10, spreadRadius: 0),
            BoxShadow(color: Colors.red, offset: Offset(5, 5), blurRadius: 10, spreadRadius: 0),
          ],
          gradient: SweepGradient(
            center: Alignment.center,
            startAngle: 0,
            colors: [Colors.red, Colors.blue],
            stops: [0, 1]
          ),
          backgroundBlendMode: BlendMode.src,
          shape: BoxShape.circle,
        ),
        child: Container(width: 300, height: 300)
      );
  }
}


// Padding
class DecoratedBoxView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        DecoratedBox(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.red, Colors.blue, Colors.yellow],
            ),
          ),
          child: Container(width: 200, height: 200)
        ),
        DecoratedBox(
          decoration: BoxDecoration(
            gradient: RadialGradient(
              colors: [Colors.red, Colors.blue, Colors.yellow],
            ),
          ),
          child: Container(width: 200, height: 200)
        ),
        DecoratedBox(
          decoration: BoxDecoration(
            gradient: SweepGradient(
              colors: [Colors.red, Colors.blue, Colors.yellow],
            ),
          ),
          child: Container(width: 200, height: 200)
        ),
      ],
    );
  }
}