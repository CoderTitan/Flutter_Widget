import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';



void main(List<String> args) => runApp(NewApp());

class NewApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return App();
  }
}

class App extends State<NewApp> with SingleTickerProviderStateMixin {

  List tabs = ['语文', '数学', '英语', '政治', '历史', '地理', '物理', '化学', '生物'];
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(initialIndex: 0, length: tabs.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('CoderTitan'),
              backgroundColor: Colors.blueAccent,
              brightness: Brightness.dark,
              centerTitle: true,
              bottom: TabBar(
                controller: _tabController,
                tabs: tabs.map((e) => Tab(text: e)).toList(),
                isScrollable: true,
                indicatorColor: Colors.red,
                indicatorWeight: 2,
                indicatorSize: TabBarIndicatorSize.label,
                labelColor: Colors.orange,
                unselectedLabelColor: Colors.white,
                labelStyle: TextStyle(fontSize: 18, color: Colors.orange),
                unselectedLabelStyle: TextStyle(fontSize: 15, color: Colors.white),
              ),
            ),
            body: TabBarView(
              controller: _tabController,
              children: tabs.map((e) {
                return Container(
                  alignment: Alignment.center,
                  child: Text(e, style:TextStyle(fontSize: 50)),
                );
              }).toList(),
            ),
        ),
        debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 414,
      height: 600,
      color: Colors.grey[200],
      child: Text('data')
    );
  }
}

class Mine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 414,
      height: 600,
      color: Colors.grey[200],
      child: CupertinoSlider(
        value: 0.6,
        onChanged: (value) => print(value),
      )
    );
  }
}


