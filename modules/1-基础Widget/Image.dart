import 'package:flutter/material.dart';
import 'dart:io';

void main(List<String> args) {
  runApp(
      App()
  );
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            // 设置导航栏
            appBar: AppBar(
                title: Text('CoderTitan'),
            ),
            body: IconImage(),
        ),
        theme: ThemeData(
            primarySwatch: Colors.blue
        ),
    );
  }
}

class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 414.0,
      height: 500.0,
      color: Colors.green,
      child: Image(
        image: NetworkImage('https://titanjun.oss-cn-hangzhou.aliyuncs.com/flutter/flutter.jpeg?x-oss-process=style/titanjun'),
        colorBlendMode: BlendMode.srcIn,
        fit: BoxFit.scaleDown,
        filterQuality: FilterQuality.medium,
        alignment: Alignment.topLeft,
      ),
    );
  }
}

class NetworkPicture extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 414.0,
        height: 600.0,
        color: Colors.orange,
        child: Image.network(
          'https://titanjun.oss-cn-hangzhou.aliyuncs.com/flutter/catimage.jpg',
          fit: BoxFit.scaleDown,
        )
    );
  }
}

class FilePicture extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 414.0,
        height: 600.0,
        color: Colors.orange,
        child: Image.file(
          File("/Users/quanjunt⁩/⁩Downloads/catimage.jpg")
        )
    );
  }
}

class AssetPicture extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 414.0,
        height: 600.0,
        color: Colors.orange,
        child: Image.asset(
          'images/home.png',
          width: 100,
          height: 100,
          fit: BoxFit.scaleDown,
          alignment: Alignment.center,
        )
    );
  }
}

class IconImage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    String iconStr = "";
    // accessible: &#xE914; or 0xE914 or E914
    iconStr += "\uE914";
    // error: &#xE000; or 0xE000 or E000
    iconStr += " \uE000";
    // fingerprint: &#xE90D; or 0xE90D or E90D
    iconStr += " \uE90D";

    return Container(
        width: 414.0,
        height: 600.0,
        color: Colors.orange,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Icon(Icons.accessible, color:Colors.green, size: 80),
            Icon(Icons.error, color:Colors.red, size: 80),
            Icon(Icons.fingerprint, color:Colors.cyan, size: 80),
            // Text(iconStr,
            // style: TextStyle(
            //     fontFamily: "MaterialIcons",
            //     fontSize: 80.0,
            //     color: Colors.green
            // ),
            // )
          ],
        )
    );
  }
}




// Icon(Icons.accessible, color:Colors.green, size: 80),
            // Icon(Icons.backspace, color:Colors.red, size: 80),
            // Icon(Icons.cached, color:Colors.yellow, size: 80),
            // Icon(Icons.dashboard, color:Colors.cyan, size: 80),



