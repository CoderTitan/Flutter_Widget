import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';



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
            body: Home(),
        ),
        routes: {
          '/home': (BuildContext content) => Home(),
          '/mine': (BuildContext content) => Mine(),
        },
        // initialRoute: '/mine',
        onGenerateRoute: (RouteSettings setting) {
          return MaterialPageRoute(
            settings: setting,
            builder: (BuildContext content) => Text('生成一个路由')
          );
        },
        onGenerateTitle: (BuildContext content) => '这是一个路由',
        onUnknownRoute: (RouteSettings setting) {
          return MaterialPageRoute(
            settings: setting,
            builder: (BuildContext content) => Text('这是一个未知路由')
          );
        },
        navigatorObservers: [HomeObserver()],
        // builder: (BuildContext content, Widget widget) => Text('builder'),
        color: Colors.red,
        title: '我是标题',
        theme: ThemeData(
            primarySwatch: Colors.blue
        ),
        debugShowMaterialGrid: false,
        showPerformanceOverlay: false,
        checkerboardOffscreenLayers: false,
        checkerboardRasterCacheImages: false,
        showSemanticsDebugger: false,
        debugShowCheckedModeBanner: false,
    );
  }
}

// 继承NavigatorObserver
class HomeObserver extends NavigatorObserver {
  @override
  void didPush(Route route, Route previousRoute) {
    super.didPush(route, previousRoute);

    // 获取路由的名字
    print('name = ${route.settings.name}');
    // 获取返回的内容
    print('reaule = ${route.currentResult}');
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 414,
      height: 600,
      color: Colors.grey[200],
      child: CupertinoSwitch(
        value: true,
        onChanged: (val) {
          Navigator.of(context).pushNamed('/mine');
        },
      ),
    );
  }
}

class Mine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 414,
      height: 600,
      color: Colors.grey[200],
      child: CupertinoSlider(
        value: 0.6,
        onChanged: (value) => print(value),
      )
    );
  }
}

 
// void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'Cupertino App',
      color: Colors.red,
      home: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text('Cupertino App Bar'),
        ),
        child: Center(
          child: Container(
            child: Text('Hello World'),
          ),
        ),
        
      ),
    );
  }
}