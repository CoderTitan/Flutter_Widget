import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';



void main(List<String> args) => runApp(NewApp());

class NewApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return App();
  }
}

class App extends State<NewApp> {

  int _selectIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('CoderTitan'),
          ),
          body: Home(),
          bottomNavigationBar: BottomNavigationBar(
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: (Icon(Icons.home)),
                title: Text('首页'),
                activeIcon: Icon(Icons.add_to_home_screen),
                backgroundColor: Colors.blue
              ),
              BottomNavigationBarItem(
                icon: (Icon(Icons.person)),
                title: Text('首页'),
                activeIcon: Icon(Icons.person_outline),
                backgroundColor: Colors.blue
              )
            ],
            currentIndex: _selectIndex,
            onTap: _onItemTapped,
            type: BottomNavigationBarType.fixed,
          ),
        ),
    );
  }

  void _onItemTapped(int index) {
    setState() {
      _selectIndex = index;
    }
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 414,
      height: 600,
      color: Colors.grey[200],
      child: Text('data')
    );
  }
}

