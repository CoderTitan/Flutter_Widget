

// 富文本
class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Text.rich(
            TextSpan(
              text: '我是一只小鸭子',
              style: TextStyle(fontSize: 15, color: Colors.red),
              children: [
                TextSpan(text: '大鸭子', style: TextStyle(fontSize: 19, color: Colors.green)),
                TextSpan(text: 'Big Dog', style: TextStyle(fontSize: 25, color: Colors.blue)),
              ]
            )
          )
        ],
      ),
    );
  }
}