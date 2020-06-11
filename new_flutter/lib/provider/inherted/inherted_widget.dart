import 'package:flutter/material.dart';



void main() => runApp(MyApp());

class CounterWidget extends InheritedWidget {
  // 1. 共享的数据
  final int counter;

  // 2. 定义构造方法
  CounterWidget({this.counter, Widget child}): super(child: child);

  // 3. 获取组件最近的当前InhertedWIdget
  static CounterWidget of(BuildContext context) {
    // 沿着Element树, 去找到最近的HYCounterElement, 从Element中取出Widget对象
    return context.dependOnInheritedWidgetOfExactType();
  }

  @override
  bool updateShouldNotify(CounterWidget oldWidget) {
    return oldWidget.counter != counter;
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent
      ),
      home: CounterPage(),
    );
  }
}

class CounterPage extends StatefulWidget {
  @override
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {


  int _counter = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('InheritedWidget', style: TextStyle(fontSize: 16),)),
      body: CounterWidget(
        counter: _counter,
        child: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ShowData01(),
                ShowData02()
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            _counter++;
          });
        },
      ),
    );
  }
}


class ShowData01 extends StatefulWidget {
  @override
  _ShowData01State createState() => _ShowData01State();
}

class _ShowData01State extends State<ShowData01> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('ShowData01 ---- didChangeDependencies');
  }


  @override
  Widget build(BuildContext context) {
    int count = CounterWidget.of(context).counter;
    return Card(
      color: Colors.green,
      child: Text('当前计数: $count', style: TextStyle(fontSize: 20, color: Colors.white)),
    );
  }
}

class ShowData02 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int count = CounterWidget.of(context).counter;
    return Card(
      color: Colors.orange,
      child: Text('当前计数: $count', style: TextStyle(fontSize: 20, color: Colors.white)),
    );
  }
}

