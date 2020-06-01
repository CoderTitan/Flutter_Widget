import 'package:flutter/material.dart';
import 'package:new_flutter/douban/component/tabbar_item.dart';
import 'package:new_flutter/douban/pages/home/home.dart';
import 'package:new_flutter/douban/pages/others/middle.dart';
import 'package:new_flutter/douban/pages/others/mine.dart';

class MainWidget extends StatefulWidget {
  @override
  _MainWidgetState createState() => _MainWidgetState();
}

class _MainWidgetState extends State<MainWidget> {

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: <Widget>[
          HomePage(),
          MiddlePage(),
          MinePage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 15,
        unselectedFontSize: 13,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        currentIndex: _currentIndex,
        items: [
          TabBarItem(
            Icon(Icons.home, size: 30, color: Colors.grey,),
            Icon(Icons.add_to_home_screen, size: 30, color: Colors.blue),
            "首页"
          ),
          TabBarItem(
            Icon(Icons.home, size: 30, color: Colors.grey,),
            Icon(Icons.add_to_home_screen, size: 30, color: Colors.blue),
            "中间"
          ),
          TabBarItem(
            Icon(Icons.home, size: 30, color: Colors.grey,),
            Icon(Icons.add_to_home_screen, size: 30, color: Colors.blue),
            "我的"
          )
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}




