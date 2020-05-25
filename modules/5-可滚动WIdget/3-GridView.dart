import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';



void main(List<String> args) => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            // 设置导航栏
            appBar: AppBar(
                title: Text('CoderTitan'),
            ),
            body: BuilderGridView(),
        ),
        theme: ThemeData(
            primarySwatch: Colors.blue
        ),
    );
  }
}

class CountScrollView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: EdgeInsets.all(10),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 1,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10
      ),
      children: <Widget>[
        Container(color: Colors.orange),
        Container(color: Colors.blue),
        Container(color: Colors.orange),
        Container(color: Colors.yellow),
        Container(color: Colors.pink)
      ],
    );
  }
}

class ExtentScrollView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: EdgeInsets.all(10),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 100,
        childAspectRatio: 1,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10
      ),
      children: <Widget>[
        Container(color: Colors.orange),
        Container(color: Colors.blue),
        Container(color: Colors.orange),
        Container(color: Colors.yellow),
        Container(color: Colors.pink)
      ],
    );
  }
}

class CountGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: EdgeInsets.all(10),
      crossAxisCount: 3,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      childAspectRatio: 1,
      children: <Widget>[
        Container(color: Colors.orange),
        Container(color: Colors.blue),
        Container(color: Colors.orange),
        Container(color: Colors.yellow),
        Container(color: Colors.pink)
      ],
    );
  }
}

class BuilderGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 50,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10
      ),
      itemBuilder: (content, index) {
        return Container(
          color: Colors.orange,
          child: Center(
            child: Text('$index'),
          ),
        );
      },
    );
  }
}
