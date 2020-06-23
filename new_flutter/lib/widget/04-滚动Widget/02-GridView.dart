import 'package:flutter/material.dart';

class WidgetMoudle extends StatelessWidget {
  const WidgetMoudle({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: GridView.custom(
          
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4, 
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 1,
          ), 
          childrenDelegate: SliverChildListDelegate(
            List.generate(100, (index) {
              return Container(
                color: Colors.red, 
                child: Center(child: Text('$index', style: TextStyle(fontSize: 20)))
              );
            }),  
          )
        )
      )
    );
  }
}


class WidgetMoudle5 extends StatelessWidget {
  const WidgetMoudle5({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: GridView.custom(
          
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, 
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 1,
          ), 
          childrenDelegate: SliverChildBuilderDelegate(
            (context, index) {
              return Container(
                color: Colors.red, 
                child: Center(child: Text('$index', style: TextStyle(fontSize: 20)))
              );
            },
            childCount: 20,
          ),
        )
      )
    );
  }
}




class WidgetMoudle4 extends StatelessWidget {
  const WidgetMoudle4({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: GridView.extent(
          maxCrossAxisExtent: 100,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 1,
          children: List.generate(100, (index) {
            return Container(
              color: Colors.red, 
              child: Center(child: Text('$index', style: TextStyle(fontSize: 20)))
            );
          }),
        )
      )
    );
  }
}



class WidgetMoudl3 extends StatelessWidget {
  const WidgetMoudl3({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: GridView.count(
          crossAxisCount: 4,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 1,
          children: List.generate(100, (index) {
            return Container(
              color: Colors.orange, 
              child: Center(child: Text('$index', style: TextStyle(fontSize: 20)))
            );
          }),
        )
      )
    );
  }
}


class WidgetMoudle2 extends StatelessWidget {
  const WidgetMoudle2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: GridView.builder(
          itemCount: 100,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, 
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 1,
          ), 
          itemBuilder: (context, index) {
            return Container(
              color: Colors.blue, 
              child: Center(child: Text('$index', style: TextStyle(fontSize: 20)))
            );
          }
        )
      )
    );
  }
}


class WidgetMoudle1 extends StatelessWidget {
  const WidgetMoudle1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, 
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 1,
          ),
          children: List.generate(100, (index) {
            return Container(color: Colors.green,);
          }),
        ),
      )
    );
  }
}