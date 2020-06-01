
import 'package:flutter/material.dart';
import 'package:new_flutter/douban/pages/home/component/home_content.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('首页', style: TextStyle(fontSize: 15, color: Colors.white)),
      ),
      body: HomeContent(),
    );
  }
}