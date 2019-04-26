import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'dart:io';

void main(List<String> args) => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            // 设置导航栏
            appBar: AppBar(
                title: Text('CoderTitan'),
            ),
            body: TextStateWidget(),
        ),
        theme: ThemeData(
            primarySwatch: Colors.blue
        ),
    );
  }
}


// RaisedButton
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 414.0,
      height: 600.0,
      color: Colors.white12,
      child: Wrap(
        alignment: WrapAlignment.center,
        runAlignment: WrapAlignment.center,
        spacing: 15,
        runSpacing: 15,
        children: <Widget>[
          
        ],
      )
    );
  }
}


class TextStateWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TextWidget();
  }
}

class TextWidget extends State<TextStateWidget>  {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _psdController = TextEditingController();
  GlobalKey _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
      child: Form(
        key: _formKey,
        autovalidate: true,
        child: Column(
          children: <Widget>[
            TextFormField(
              autofocus: true,
              controller: _nameController,
              decoration: InputDecoration(
                labelText: '用户名',
                hintText: '用户名或密码',
                icon: Icon(Icons.person)
              ),
              validator: (value) {// 校验用户名
                return value.trim().length > 0 ? null : '用户名不能为空';
              },
            ),
            TextFormField(
              controller: _psdController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: '密码',
                hintText: '登录密码',
                icon: Icon(Icons.lock)
              ),
              validator: (psd) {
                return psd.trim().length > 5 ? null : '密码不能少于6位';
              },
            ),
            Padding(
              padding: EdgeInsets.only(top: 30),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: RaisedButton(
                      padding: EdgeInsets.all(15),
                      child: Text('登录'),
                      color: Theme.of(context).primaryColor,
                      textColor: Colors.white,
                      onPressed: () {
                        // 反正这里我是没看懂, 后面再慢慢学习吧
                        if((_formKey.currentState as FormState).validate()){
                          //验证通过提交数据
                        }
                      },
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}