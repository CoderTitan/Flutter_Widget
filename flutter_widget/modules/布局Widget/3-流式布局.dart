import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(App());
}


class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            // 设置导航栏
            appBar: AppBar(
                title: Text('CoderTitan'),
            ),
            body: FlowWidget(),
        ),
        theme: ThemeData(
            primarySwatch: Colors.blue
        ),
    );
  }
}

class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 414.0,
      height: 500.0,
      color: Colors.orange,
      child: Wrap(
        direction: Axis.horizontal,
        alignment: WrapAlignment.center,
        runAlignment: WrapAlignment.center,
        spacing: 10,
        runSpacing: 20,
        children: <Widget>[
          Container(width: 100.0, height:100.0, color: Colors.red),
          Container(width: 100.0, height:100.0, color: Colors.yellow),
          Container(width: 100.0, height:100.0, color: Colors.blue),
          Container(width: 100.0, height:100.0, color: Colors.cyan),
          Container(width: 100.0, height:100.0, color: Colors.pink)
        ],
      )
    );
  }
}

class FlowWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Colors.orange,
      child: Flow(
        delegate: ShowFlowDelegate(margin: EdgeInsets.all(10)),
        children: <Widget>[
          Container(width: 100.0, height:100.0, color: Colors.red),
          Container(width: 100.0, height:100.0, color: Colors.yellow),
          Container(width: 100.0, height:100.0, color: Colors.blue),
          Container(width: 100.0, height:100.0, color: Colors.cyan),
          Container(width: 100.0, height:100.0, color: Colors.pink)
        ],
      ),
    );
  }
}

class ShowFlowDelegate extends FlowDelegate {
  EdgeInsets margin =EdgeInsets.zero;
  ShowFlowDelegate({this.margin});

  @override
  void paintChildren(FlowPaintingContext context) {
    var x = margin.left;
    var y = margin.top;
    //计算每一个子widget的位置  
    for (int i = 0; i < context.childCount; i++) {
      var w = context.getChildSize(i).width + x + margin.right;
      if (w < context.size.width) {
        context.paintChild(i,
            transform: new Matrix4.translationValues(
                x, y, 0.0));
        x = w + margin.left;
      } else {
        x = margin.left;
        y += context.getChildSize(i).height + margin.top + margin.bottom;
        //绘制子widget(有优化)  
        context.paintChild(i,
            transform: new Matrix4.translationValues(
                x, y, 0.0));
         x += context.getChildSize(i).width + margin.left + margin.right;
      }
    }
  }

  @override
  Size getSize(BoxConstraints constraints) {
    // 设置Flow的大小
    return Size(double.infinity, 300);
  }

  @override
  bool shouldRepaint(FlowDelegate oldDelegate) {
    return oldDelegate !=this;
  }
}

/**
 * Flow({
    Key key,
    @required this.delegate,
    List<Widget> children = const <Widget>[],
  })
 */


/**
 * Wrap({
    Key key,
    this.direction = Axis.horizontal,
    this.alignment = WrapAlignment.start,
    this.spacing = 0.0,
    this.runAlignment = WrapAlignment.start,
    this.runSpacing = 0.0,
    this.crossAxisAlignment = WrapCrossAlignment.start,
    this.textDirection,
    this.verticalDirection = VerticalDirection.down,
    List<Widget> children = const <Widget>[],
  })
 */





