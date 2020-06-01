

class WidgetMoudle extends StatelessWidget {
  const WidgetMoudle({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(padding: EdgeInsets.all(10), child: Container(width: 10, height: 20, color: Colors.red)),
              Padding(padding: EdgeInsets.only(left: 10), child: Container(width: 10, height: 20, color: Colors.red)),
              Padding(padding: EdgeInsets.fromLTRB(10, 30, 10, 10), child: Container(width: 10, height: 20, color: Colors.red)),
              ConstrainedBox(constraints: BoxConstraints(maxHeight: 20), child: Container(width: 10, height: 200, color: Colors.red),)
            ],
          ),
          Stack(
            alignment: AlignmentDirectional.centerEnd,
            fit: StackFit.loose,
            overflow: Overflow.visible,
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 100,
                color: Colors.blue,
              ),
              Positioned(
                left: 20,
                bottom: -35,
                child: Container(
                  width: 300,
                  height: 70,
                  // color: Colors.red,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.redAccent,
                      width: 3,
                      style: BorderStyle.solid
                    ),
                    gradient: LinearGradient(
                      colors: [
                        Colors.green,
                        Colors.red
                      ]
                    ),
                    boxShadow: [
                      BoxShadow(color: Colors.grey, offset: Offset(-5, -5), blurRadius: 10, spreadRadius: 0),
                      BoxShadow(color: Colors.red, offset: Offset(5, 5), blurRadius: 10, spreadRadius: 0),
                    ]
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}