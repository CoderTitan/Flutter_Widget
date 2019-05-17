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
            body: CustomList(),
        ),
        theme: ThemeData(
            primarySwatch: Colors.blue
        ),
    );
  }
}





class ScrollView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView(
      itemExtent: 60,
      cacheExtent: 100,
      addAutomaticKeepAlives: false,
      children: renderCell(),
    );
  }

  List<Widget> renderCell() {
    String str = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    return str.split("")
    .map((item) => ListTile(
      title: Text('字母--$item'),
      subtitle: Text('这是字母列表'),
      leading: Icon(Icons.wifi),
    )).toList();
  }
}

class ListBuild extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return ListView.builder(
        itemCount: 30,
        itemBuilder: (content, index) {
          return ListTile(
            title: Text('index--$index'),
            subtitle: Text('数字列表'),
            leading: Icon(Icons.wifi),
          );
        },
      );
    }
}

class SeparatedList extends StatelessWidget {
  //下划线widget预定义以供复用。  
  Widget lineView1 = Divider(color: Colors.red, height: 0, indent: 10,);
  Widget lineView2 = Divider(color: Colors.blue, height: 5, indent: 30);

  @override
  Widget build(BuildContext context) {

    return ListView.separated(
      itemCount: 30,
        itemBuilder: (content, index) {
          return ListTile(
            title: Text('index--$index'),
            subtitle: Text('我是一只小鸭子, 咿呀咿呀哟; 我是一只小鸭子, 咿呀咿呀哟; 我是一只小鸭子, 咿呀咿呀哟;'),
            leading: Icon(Icons.wifi),
            trailing: Icon(Icons.keyboard_arrow_right),
            isThreeLine: true,
            dense: false,
            contentPadding: EdgeInsets.all(10),
            enabled: index % 3 != 0,
            onTap: () => print('index = $index'),
            onLongPress: () => print('long-Index = $index'),
            selected: index % 2 == 0,
          );
        },
        separatorBuilder: (context, index) {
          return index % 2 == 0 ? lineView1 : lineView2;
        },
    );
  }
}

class CustomList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.custom(
      childrenDelegate: MySliverBuilderDelegate(
        (BuildContext context, int index) {
          return ListTile(
            title: Text('index--$index'),
            subtitle: Text('数字列表'),
            leading: Icon(Icons.wifi),
          );
        }, childCount: 30,
      ),
    );
  }
}



class MySliverBuilderDelegate extends SliverChildBuilderDelegate {
  MySliverBuilderDelegate(
    Widget Function(BuildContext, int) builder, {
    int childCount,
    bool addAutomaticKeepAlives = true,
    bool addRepaintBoundaries = true,
  }) : super(builder,
            childCount: childCount,
            addAutomaticKeepAlives: addAutomaticKeepAlives,
            addRepaintBoundaries: addRepaintBoundaries);

  @override
  void didFinishLayout(int firstIndex, int lastIndex) {
    print('firstIndex: $firstIndex, lastIndex: $lastIndex');
  }
}