import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';



void main(List<String> args) => runApp(App());

class App extends StatelessWidget {

  List tabs = ['首页', '新闻', '我的'];
  // TabController _tabController1 = TabController(initialIndex: 0, length: 3,);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              leading: Text('我的', style: TextStyle(color: Colors.orange, fontSize: 20),),
              automaticallyImplyLeading: true,
              actions: <Widget>[
                Icon(Icons.add),
                Icon(Icons.home),
              ],
              title: Text('CoderTitan'),
              backgroundColor: Colors.blueAccent,
              brightness: Brightness.dark,
              iconTheme: IconThemeData(color: Colors.white, opacity: 0.96, size: 30),
              centerTitle: true,
              primary: true,
              titleSpacing: 0,
              toolbarOpacity: 0.99,
              bottomOpacity: 0.2,
              // bottom: TabBar(
              //   tabs: <Widget>[
              //     Tab(text: '首页', icon: Icon(Icons.home)),
              //     Tab(text: '首页', icon: Icon(Icons.home)),
              //   ],
              // ),
            ),
            body: Home(),
            floatingActionButton: FloatingActionButton(
              child: Icon(Icons.add),
              tooltip: '悬浮按钮',
              foregroundColor: Colors.orange,
              backgroundColor: Colors.blue,
              heroTag: 1,
              onPressed: _floatAction,
              clipBehavior: Clip.hardEdge,
              isExtended: true,
              // mini: true,
            ),
            floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
            floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
            // persistentFooterButtons: <Widget>[
            //   Icon(Icons.add),
            //   Icon(Icons.home),
            //   Icon(Icons.person)
            // ],
            // bottomNavigationBar: Icon(Icons.router, size: 40),
            drawer: Icon(Icons.home, size: 40, color: Colors.red,),
            endDrawer: Icon(Icons.home, size: 40, color: Colors.green,),
            // bottomSheet: Text('titanjun'),
            backgroundColor: Colors.orange,
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


// 相关事件
void _floatAction() {
  print('floatAction');
}