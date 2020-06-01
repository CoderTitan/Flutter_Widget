import 'package:flutter/material.dart';

class TabBarItem extends BottomNavigationBarItem {
  
  TabBarItem(Widget icon, Widget selectIcon, String title):
    super(
      title: Text(title),
      icon: icon,
      activeIcon: selectIcon
    );
}