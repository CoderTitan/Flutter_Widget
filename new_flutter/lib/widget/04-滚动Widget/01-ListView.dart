import 'package:flutter/material.dart';

class WidgetMoudle extends StatelessWidget {
  const WidgetMoudle({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.separated(
        itemCount: 20,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.keyboard),
            trailing: Icon(Icons.arrow_forward),
            title: Text('第一条数据$index'),
            subtitle: Text('subtitle$index'),
          );
        }, 
        separatorBuilder: (context, index) {
          return Divider(color: Colors.red, height: 2, indent: 10, endIndent: 10,);
        }, 
      )
    );
  }
}


class WidgetMoudle2 extends StatelessWidget {
  const WidgetMoudle2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        // reverse: true,
        itemCount: 20,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.keyboard),
            trailing: Icon(Icons.arrow_forward),
            title: Text('第一条数据$index'),
            subtitle: Text('subtitle$index'),
          );
        }
      )
    );
  }
}



class WidgetMoudle1 extends StatelessWidget {
  const WidgetMoudle1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.all(8),
        itemExtent: 64,
        children: List.generate(20, (index) {
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
