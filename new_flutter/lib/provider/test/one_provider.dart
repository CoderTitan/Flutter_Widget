import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:new_flutter/provider/view_model/count_view_model.dart';



void main() {
  runApp(
    ChangeNotifierProvider(
      create: (ctx) => CountViewModel(),
      child: MyApp(),
    )
  );
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


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ChangeNotifierProvider', style: TextStyle(fontSize: 16),)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ShowData01(),
            ShowData02(),
          ],
        ),
      ),
      floatingActionButton: Selector<CountViewModel, CountViewModel>(
        shouldRebuild: (previous, next) => false,
        selector: (ctx, countVM) => countVM,
        child: Icon(Icons.add),
        builder: (ctx, countVM, child) {
          print("floatingActionButton build方法被执行");
          return FloatingActionButton(
            child: child,
            onPressed: () {
              countVM.counter += 1;
            },
          );
        },
      )
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
    int counter = Provider.of<CountViewModel>(context).counter;
    return Card(
      color: Colors.green,
      child: Text('当前计数: $counter', style: TextStyle(fontSize: 20, color: Colors.white)),
    );
  }
}

class ShowData02 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
int counter = Provider.of<CountViewModel>(context).counter;
    return Container(
      color: Colors.red,
      child: Consumer<CountViewModel>(
        builder: (ctx, countVM, child) {
          return Text('当前计数: ${countVM.counter}', style: TextStyle(fontSize: 20, color: Colors.white));
        },
      ),
    );
  }
}

