import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';



void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
return CupertinoApp(
  title: 'Cupertino App',
  color: Colors.red,
  debugShowCheckedModeBanner: false,
  home: CupertinoPageScaffold(
    backgroundColor: Colors.yellow,
    resizeToAvoidBottomInset: true,
    navigationBar: CupertinoNavigationBar(
      leading: Icon(Icons.person),
      automaticallyImplyLeading: false,
      automaticallyImplyMiddle: false,
      previousPageTitle: '返回',
      middle: Text('Cupertino App Bar'),
      trailing: Icon(Icons.money_off),
      border: Border.all(),
      backgroundColor: Colors.white,
      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
      actionsForegroundColor: Colors.red,
      transitionBetweenRoutes: false,
      heroTag: Text('data'),
    ),
    child: Center(
      child: Container(
        child: Text('Hello World'),
      ),
    ),
  ),
);
  }
}
