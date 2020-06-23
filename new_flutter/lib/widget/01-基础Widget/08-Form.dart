
import 'package:flutter/material.dart';


/**
 * 用户登录示例, 在提交之前校验：
 * 用户名不能为空，如果为空则提示“用户名不能为空”。
 * 密码不能小于6位，如果小于6为则提示“密码不能少于6位”
 */
class WidgetMoudle extends StatefulWidget {
  WidgetMoudle({Key key}) : super(key: key);

  @override
  _WidgetMoudleState createState() => _WidgetMoudleState();
}

class _WidgetMoudleState extends State<WidgetMoudle> {

  TextEditingController _nameController = TextEditingController();
  TextEditingController _psdController = TextEditingController();
  GlobalKey _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
       child: Form(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
             TextFormField(
               autofocus: true,
               autovalidate: true,
               controller: _nameController,
               decoration: InputDecoration(
                 hintText: '请输入用户名',
                 icon: Icon(Icons.people)
               ),
               validator: (value) {
                 return value.trim().length > 0 && value.trim().length < 10 ? null : '用户名不能为空';
               },
             ),
             TextFormField(
               autofocus: false,
               autovalidate: true,
               controller: _psdController,
               decoration: InputDecoration(
                 hintText: '请输入密码',
                 icon: Icon(Icons.security)
               ),
               validator: (value) {
                 return value.trim().length > 0 && value.trim().length < 10 ? null : '密码格式不正确';
               },
             ),
             SizedBox(height: 16),
             Container(
               width: double.infinity,
               height: 44,
               child: RaisedButton(
                 color: Colors.orange,
                 child: Text('登录', style: TextStyle(fontSize: 18, color: Colors.white)),
                 onPressed: () {
                   print('开始登录');
                 },
               ),
             )
           ],
         ),
       ),
    );
  }
}