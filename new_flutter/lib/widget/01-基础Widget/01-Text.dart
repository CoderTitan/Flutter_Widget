
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 414.0,
        height: 300.0,
        color: Color(0xfff0f0f0),
        child: Text(
          'UI上面文字的展示基本上都要靠Text组件来完成, UI上面文字的展示基本上都要靠Text组件来完成, An alternative semantics label for this text, 文本字体的缩放倍数，如：1.5则在默认字体上变成1.5倍大小字体，0.5则是0.5倍',
          textAlign: TextAlign.left,
          textDirection: TextDirection.rtl,
          softWrap: true,
          maxLines: 20,
          overflow: TextOverflow.ellipsis,
          textScaleFactor: 1,
          semanticsLabel: 'TextDirection',
          style: TextStyle(
            inherit: false,
            color: Colors.green,
            fontSize: 18,
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.italic,
            letterSpacing: 2,
            wordSpacing: 5,
            height: 1.2,
            // backgroundColor: Colors.red,
            // decoration: TextDecoration.lineThrough,
            decoration: TextDecoration.underline,
            // decoration: TextDecoration.overline,
            decorationStyle: TextDecorationStyle.dotted,
            decorationColor: Colors.orange,
          ),
        ),
      );
  }
}