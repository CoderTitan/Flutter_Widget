

class WidgetMoudle extends StatefulWidget {
  WidgetMoudle({Key key}) : super(key: key);

  @override
  _WidgetMoudleState createState() => _WidgetMoudleState();
}

class _WidgetMoudleState extends State<WidgetMoudle> {

  TextEditingController _textController = TextEditingController();
  FocusNode textNode = new FocusNode();


  @override
  Widget build(BuildContext context) {
    return Container(
       child: Column(
         children: <Widget>[
           SizedBox(height: 20),
           TextField(
            //  controller: _textController,
             focusNode: textNode,
             decoration: InputDecoration(
               labelText: 'labelText',
               hintText: 'hintText',
             ),
             keyboardType: TextInputType.multiline,
             style: TextStyle( fontSize: 20, color: Colors.orange),
             textAlign: TextAlign.left,
             textDirection: TextDirection.rtl,
             autofocus: true,
            //  obscureText: true,
            autocorrect: true,
            maxLines: 1,
            maxLength: 50,
            enabled: true,
            cursorWidth: 5,
            cursorColor: Colors.green,
            cursorRadius: Radius.circular(2),
            keyboardAppearance: Brightness.dark,
            onChanged: (text) {
              print("onChanged - $text");
            },
            onSubmitted: (text) {
              print("onSubmitted - $text");
            },
            onTap: () {

            },
          ),
          RaisedButton(
            child: Text("隐藏键盘"),
            onPressed: () {
            // 当所有编辑框都失去焦点时键盘就会收起  
                textNode.unfocus();
            },
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