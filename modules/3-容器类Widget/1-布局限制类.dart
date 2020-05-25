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
            body: UnBox(),
        ),
        theme: ThemeData(
            primarySwatch: Colors.blue
        ),
    );
  }
}

// UnconstrainedBox

class UnBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ConstrainedBox(
      constraints: BoxConstraints(
        minWidth: 40,
        minHeight: 80,
      ),
      child: UnconstrainedBox(
        textDirection: TextDirection.ltr,
        alignment: Alignment.center,
        constrainedAxis: Axis.horizontal,
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minWidth: 60,
            minHeight: 70,
          ),
          child: DecoratedBox(decoration: BoxDecoration(color: Colors.orange)),
        ),
      )
    );
  }
}

// SizedBox
class SizedBoxView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SizedBox(
      width: 80,
      height: 80,
      child: Container(
        child: DecoratedBox(decoration: BoxDecoration(color: Colors.orange)),
      ),
    );
  }
}


// 多重限制问题
class MoreBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ConstrainedBox(
      constraints: BoxConstraints(
        minWidth: 40,
        minHeight: 80,
      ),
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minWidth: 30,
          minHeight: 100,
        ),
        child: DecoratedBox(decoration: BoxDecoration(color: Colors.orange)),
      )
    );
  }
}

class MoreBoxMax extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: 100,
        maxHeight: 120,
      ),
      child: DecoratedBox(decoration: BoxDecoration(color: Colors.orange))
      // ConstrainedBox(
      //   constraints: BoxConstraints(
      //     maxWidth: 100,
      //     maxHeight: 120,
      //   ),
      //   child: DecoratedBox(decoration: BoxDecoration(color: Colors.orange)),
      // ),
    );
  }
}


// ConstrainedBox
class ConstrainedBoxView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ConstrainedBox(
      constraints: BoxConstraints(
        minWidth: double.infinity,
        minHeight: 50,
        maxHeight: 100
      ),
      child: Container(
        height: 6000,
        child: DecoratedBox(decoration: BoxDecoration(color: Colors.orange)),
      ),
    );
  }
}


