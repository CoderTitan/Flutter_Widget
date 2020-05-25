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
            body: TextFieldWidget(),
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
          TextField(
            focusNode: FocusNode(),
            decoration: InputDecoration(icon: Icon(Icons.phone_iphone), hintText: 'hintText'),
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.emergencyCall,
            style:TextStyle(color: Colors.red, fontSize: 20),
            textAlign: TextAlign.start,
            textDirection: TextDirection.ltr,
            textCapitalization: TextCapitalization.words,
            autofocus: true,
            obscureText: false,
            autocorrect: true,
            maxLines: 1,
            maxLength: 10,
            maxLengthEnforced: true,
            onChanged: (text) => print(text),
            onEditingComplete: () => print('完成输入了'),
            onSubmitted: (text) => print('完成输入了$text'),
            inputFormatters: [
              // 不能输入小写字母
              BlacklistingTextInputFormatter(RegExp("[a-z]")),
              // 限制输入10个字符
              LengthLimitingTextInputFormatter(10)
            ],
            cursorWidth: 10,
            cursorColor: Colors.cyan,
            cursorRadius: Radius.circular(5),
            keyboardAppearance: Brightness.light,
            scrollPadding: EdgeInsets.all(5),
            enableInteractiveSelection: true,
            onTap: (){
              print('点击输入框');
            },
          ),
        ],
      )
    );
  }
}

class TextFieldWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ControllerText();
  }
}

class ControllerText extends State<TextFieldWidget> {
  TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 414.0,
      height: 600.0,
      color: Colors.white12,
      child: Column(
        children: <Widget>[
          TextField(
            controller: _textController,
            decoration: InputDecoration(icon: Icon(Icons.phone_iphone), hintText: 'hintText'),
          ),
          RaisedButton(
            child: Text('赋值'),
            onPressed: (){
              setState(() {
                  _textController.text = "https://www.titanjun.top";
              });
            },
          ),
          RaisedButton(
            child: Text('取值'),
            onPressed: (){
              setState(() {});
            },
          ),
          Text(_textController.text)
        ],
      ),
    );
  }
}


class InputDecorationDemo extends StatelessWidget {
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
          TextField(
            focusNode: FocusNode(),
            decoration: InputDecoration(
              icon: Icon(Icons.mail_outline, color:Colors.orange, size: 40),
              labelText: 'labelText',
              labelStyle: TextStyle(color: Colors.blue, fontSize: 18),
              helperText: 'helperText',
              helperStyle: TextStyle(color: Colors.orange, fontSize: 18),
              hintText: 'hintText',
              hintStyle: TextStyle(color: Colors.cyan, fontSize: 18),
              errorText: 'errorText',
              errorStyle: TextStyle(color: Colors.red, fontSize: 18),
              errorMaxLines: 5,
              errorBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.red, width: 2, style: BorderStyle.solid),
                // borderRadius: BorderRadius.only()
              ),
              // hasFloatingPlaceholder: true,
              isDense: false,
              contentPadding: EdgeInsets.all(5),
              prefixIcon: Icon(Icons.account_balance),
              // prefix: Icon(Icons.account_box, color: Colors.red),
              prefixText: 'prefixText',
              prefixStyle: TextStyle(color: Colors.pinkAccent[400], fontSize: 18),
              suffixIcon: Icon(Icons.border_all),
              // suffix: Icon(Icons.cloud_done, color: Colors.red,),
              suffixText: 'suffixText',
              suffixStyle: TextStyle(color: Colors.lime[900], fontSize: 18),
              counterText: 'counterText',
              counterStyle: TextStyle(color: Colors.blue[900], fontSize: 18),
              fillColor: Colors.grey[300],
              filled: true,
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red, width: 2, style: BorderStyle.solid),
                borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red[900], width: 2, style: BorderStyle.solid),
                borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue[900], width: 2, style: BorderStyle.solid),
                borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              // enabled: false,
              semanticCounterText: 'semanticCounterText '
            ),
          )
        ],
      )
    );
  }
}
