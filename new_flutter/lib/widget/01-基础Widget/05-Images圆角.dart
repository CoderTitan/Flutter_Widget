

/**
 * 图片的圆角
 * CircleAvatar
 * ClipOval
 * BoxDecoration
 */



class CirCleImage extends StatelessWidget {
  const CirCleImage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          CircleAvatar(
            // backgroundColor: Colors.yellow,
            backgroundImage: NetworkImage('https://titanjun.oss-cn-hangzhou.aliyuncs.com/flutter/flutter_scroll.png'),
            foregroundColor: Colors.red,
            radius: 100,
            child: Text('CircleAvatar'),
          ),
          ClipOval(
            child: Image.network(
              'https://titanjun.oss-cn-hangzhou.aliyuncs.com/flutter/flutter_scroll.png',
              width: 100,
              height: 100,
              fit: BoxFit.fitHeight,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(50))
            ),
            clipBehavior: Clip.antiAlias,
            child: Image.network(
              'https://titanjun.oss-cn-hangzhou.aliyuncs.com/flutter/flutter_scroll.png',
              width: 100,
              height: 100,
              fit: BoxFit.fitHeight,
            ),
          )
        ],
      ),
    );
  }
}