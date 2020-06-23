import 'package:flutter/material.dart';

class ImageMoudle extends StatefulWidget {
  ImageMoudle({Key key}) : super(key: key);

  @override
  _ImageMoudleState createState() => _ImageMoudleState();
}

class _ImageMoudleState extends State<ImageMoudle> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Image(
         image: NetworkImage('https://titanjun.oss-cn-hangzhou.aliyuncs.com/flutter/widget_base.png'),
         semanticLabel: 'netimg',
         width: 10,
         height: 10,
        fit: BoxFit.fill,
       ),
    );
  }
}


class NetImage extends StatefulWidget {
  NetImage({Key key}) : super(key: key);

  @override
  _NetImageState createState() => _NetImageState();
}

class _NetImageState extends State<NetImage> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Image.network(
         'https://titanjun.oss-cn-hangzhou.aliyuncs.com/flutter/widget_base.png',
          width: 100,
          height: 100,
          fit: BoxFit.scaleDown,
          alignment: Alignment.center,
        ),
    );
  }
}

class ResizeMoudle extends StatelessWidget {
  const ResizeMoudle({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // 可设置占位图片的
      child: FadeInImage(
        placeholder: AssetImage("resource/images/card.png"),
        image: NetworkImage("https://titanjun.oss-cn-hangzhou.aliyuncs.com/flutter/widget_base.png"),
      ),
    );
  }
}