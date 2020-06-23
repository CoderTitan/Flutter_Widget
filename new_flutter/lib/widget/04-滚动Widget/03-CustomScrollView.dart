import 'package:flutter/material.dart';

class WidgetMoudle extends StatelessWidget {
  const WidgetMoudle({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CustomScrollView(
        scrollDirection: Axis.vertical,
        slivers: <Widget>[
          SliverAppBar(
            leading: Icon(Icons.art_track, color: Colors.red,),
            title: Text('SliverAppBar', style: TextStyle(fontSize: 20, color: Colors.red),),
            centerTitle: true,
            actions: <Widget>[
              Icon(Icons.people, color: Colors.red,),
              Icon(Icons.money_off, color: Colors.red,),
            ],
            flexibleSpace: FlexibleSpaceBar(
              // title: Text('FlexibleSpaceBar', style: TextStyle(fontSize: 20, color: Colors.red),),
              centerTitle: true,
              background: Image.asset('resource/images/card.png', fit: BoxFit.cover,),
            ),
            backgroundColor: Colors.blue[300],
            expandedHeight: 200,
            pinned: true,
            // floating: true,
            // snap: true,
            stretch: true,
          ),
          SliverPadding(
            padding: EdgeInsets.all(8),
            sliver: SliverGrid(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Container(
                    color: Colors.green,
                    child: Center(
                      child: Text('$index', style: TextStyle(fontSize: 25),),
                    ),
                  );
                },
                childCount: 15,
              ), 
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 6,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8
              )
            ),
          ),
          SliverSafeArea(
            sliver: SliverFixedExtentList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                    return Container(
                      alignment: Alignment.center,
                      color: Colors.teal[100 * (index % 9)],
                      child: new Text('grid item $index'),
                    );
                  },
                  childCount: 30,
              ), 
              itemExtent: 44
            ),
          )
        ],
      ),
    );
  }
}
