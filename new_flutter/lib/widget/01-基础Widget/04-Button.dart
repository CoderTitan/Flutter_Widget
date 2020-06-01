

class ButtonPage extends StatelessWidget {
  const ButtonPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          MaterialButton(
            child: Text('MaterialButton', style: TextStyle(fontSize: 15, color: Colors.red)),
            onPressed: () => print("object"),
            disabledColor: Colors.grey,
            textColor: Colors.green,
            color: Colors.orange,
            splashColor: Colors.transparent,
            elevation: 20,
            textTheme: ButtonTextTheme.accent,
            padding: EdgeInsets.all(10),
            // shape: BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(4)), side: BorderSide(color: Colors.green, width: 2)),
            // shape: CircleBorder(side: BorderSide(color: Colors.green, width: 2, style: BorderStyle.solid)),
            shape: RoundedRectangleBorder(side: BorderSide(color: Colors.green, width: 2), borderRadius: BorderRadius.circular(10)),
            // shape: StadiumBorder(side: BorderSide.none),
            // minWidth: 200,
            // height: 50,
            autofocus: true,
            enableFeedback: true,
          ),
          RaisedButton(
            onPressed: () => print("object"),
            onLongPress: () => print('LongPress'),
            child: Text('RaisedButton'),
            color: Colors.orange,
            shape: StadiumBorder(),
            elevation: 10,
          ),
          RaisedButton(
            onPressed: () => print("object"),
            onLongPress: () => print('LongPress'),
            child: Icon(Icons.keyboard),
            color: Colors.orange,
            shape: CircleBorder(side: BorderSide(color: Colors.green, width: 1, style: BorderStyle.solid)),
            elevation: 10,
          ),
          FlatButton(
            onPressed: () => print("object"), 
            child: Text("FlatButton"),
            color: Colors.grey,
          ),
          OutlineButton(
            onPressed: () => print("object"), 
            child: Text("OutlineButton"),
            color: Colors.grey,
          ),
          RaisedButton.icon(
            label: Text("RaisedButton"),
            icon: Icon(Icons.save),
            onPressed: () => print('RaisedButton.icon'),
          ),
          FlatButton.icon(
            label: Text("FlatButton"),
            icon: Icon(Icons.perm_media), 
            onPressed: () => print('FlatButton.icon')
          ),
          OutlineButton.icon(
            label: Text("OutlineButton"),
            icon: Icon(Icons.perm_media), 
            onPressed: () => print('OutlineButton.icon')
          )
        ],
      ),
    );
  }
}

