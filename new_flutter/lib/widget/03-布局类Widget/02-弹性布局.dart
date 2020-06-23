import 'package:flutter/material.dart';


class WidgetMoudle extends StatelessWidget {
  const WidgetMoudle({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(height: 50, color: Colors.red,),
          ),
          Expanded(
            flex: 1,
            child: Container(height: 50, color: Colors.green,),
          )
        ],
      ),
    );
  }
}