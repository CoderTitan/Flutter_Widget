


class WidgetMoudle extends StatefulWidget {
  WidgetMoudle({Key key}) : super(key: key);

  @override
  _WidgetMoudleState createState() => _WidgetMoudleState();
}

class _WidgetMoudleState extends State<WidgetMoudle> {

  bool isSwitch = false;
  bool isSelect = false;

  @override
  Widget build(BuildContext context) {
    return Container(
       child: Column(
         children: <Widget>[
           Switch(
             activeColor: Colors.yellow,
             activeTrackColor: Colors.blue,
             inactiveThumbColor: Colors.orange,
             inactiveTrackColor: Colors.red,
             value: isSwitch, 
             onChanged: (isOpen) {
               setState(() {
                 isSwitch = isOpen;
               });
             }
           ),
           Checkbox(
             activeColor: Colors.orange,
             materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
             value: isSelect, 
             onChanged: (isOpen) {
               setState(() {
                 isSelect = isOpen;
               });
             }
           )
         ],
       ),
    );
  }
}
