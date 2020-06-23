import 'package:flutter/material.dart';
import 'package:new_flutter/provider/model/user_info.dart';
import 'package:new_flutter/provider/view_model/config_view_model.dart';
import 'package:new_flutter/provider/view_model/user_view_model.dart';
import 'package:provider/provider.dart';
import 'package:new_flutter/provider/store_provider/store_provider.dart';
import 'package:new_flutter/provider/view_model/count_view_model.dart';



void main() {
  runApp(
    MultiProvider(
      providers: providerList,
      child: MyApp(),
    )
  );
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent
      ),
      home: HomePage(),
    );
  }
}


class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ChangeNotifierProvider', style: TextStyle(fontSize: 16),)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ShowData01(),
            ShowData02(),
          ],
        ),
      ),
      floatingActionButton: Selector3<UserViewModel, ConfigViewModel, CountViewModel, UserViewModel>(
        shouldRebuild: (previous, next) => false,
        selector: (ctx, userVM, configVM, countVM) => userVM,
        child: Icon(Icons.add),
        builder: (ctx, userVM, child) {
          return FloatingActionButton(
            child: child,
            onPressed: () {
              userVM.userInfo = UserInfo(nickName: 'titan', account: '134567890419');
            },
          );
        },
      )
    );
  }
}


class ShowData01 extends StatelessWidget {
  const ShowData01({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int counter = Provider.of<CountViewModel>(context).counter;
    return Card(
      color: Colors.green,
      child: Text('当前计数: $counter', style: TextStyle(fontSize: 20, color: Colors.white)),
    );
  }
}

class ShowData02 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Consumer3<UserViewModel, ConfigViewModel, CountViewModel>(
        builder: (ctx, userVM, configVM, countVM, child) {
          return Text('当前计数: ${countVM.counter}--${userVM.userInfo.nickName}', style: TextStyle(fontSize: 20, color: Colors.white));
        },
      )
    );
  }
}

