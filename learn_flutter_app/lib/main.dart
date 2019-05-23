import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:learn_flutter_app/alert_dialog_demo.dart';
import 'package:learn_flutter_app/align_demo.dart';
import 'package:learn_flutter_app/animation_demo.dart';
import 'package:learn_flutter_app/appbar_demo.dart';
import 'package:learn_flutter_app/aspect_ratio_demo.dart';
import 'package:learn_flutter_app/baseline_demo.dart';
import 'package:learn_flutter_app/bottom_navigator_demo.dart';
import 'package:learn_flutter_app/boxshadow_demo.dart';
import 'package:learn_flutter_app/card_demo.dart';
import 'package:learn_flutter_app/clip_demo.dart';
import 'package:learn_flutter_app/constrainedbox_demo.dart';
import 'package:learn_flutter_app/container_demo.dart';
import 'package:learn_flutter_app/container_image_demo.dart';
import 'package:learn_flutter_app/cupertino_activity_indicator_demo.dart';
import 'package:learn_flutter_app/cupertino_alertdialog_dem.dart';
import 'package:learn_flutter_app/cupertino_button_demo.dart';
import 'package:learn_flutter_app/cupertino_combine_demo.dart';
import 'package:learn_flutter_app/decoratedbox_demo.dart';
import 'package:learn_flutter_app/default_tab_controller_demo.dart';
import 'package:learn_flutter_app/dismissible_demo.dart';
import 'package:learn_flutter_app/drawer_demo.dart';
import 'package:learn_flutter_app/fitbox_demo.dart';
import 'package:learn_flutter_app/flat_button_demo.dart';
import 'package:learn_flutter_app/floating_action_button_demo.dart';
import 'package:learn_flutter_app/form_demo.dart';
import 'package:learn_flutter_app/fractionally_sizedbox_demo.dart';
import 'package:learn_flutter_app/gesture_detector_demo.dart';
import 'package:learn_flutter_app/grid_list_demo.dart';
import 'package:learn_flutter_app/grid_view_demo.dart';
import 'package:learn_flutter_app/hello_world_demo.dart';
import 'package:learn_flutter_app/hero_demo.dart';
import 'package:learn_flutter_app/horizontal_list_dmeo.dart';
import 'package:learn_flutter_app/icon_demo.dart';
import 'package:learn_flutter_app/image_demo.dart';
import 'package:learn_flutter_app/index_stack_demo.dart';
import 'package:learn_flutter_app/layout_demo.dart';
import 'package:learn_flutter_app/limited_box_demo.dart';
import 'package:learn_flutter_app/lineargradient_demo.dart';
import 'package:learn_flutter_app/list_demo.dart';
import 'package:learn_flutter_app/listview_demo.dart';
import 'package:learn_flutter_app/long_list_demo.dart';
import 'package:learn_flutter_app/navigator_return_demo.dart';
import 'package:learn_flutter_app/navigator_route_demo.dart';
import 'package:learn_flutter_app/offstage_demo.dart';
import 'package:learn_flutter_app/opacity_demo.dart';
import 'package:learn_flutter_app/overflowbox_demo.dart';
import 'package:learn_flutter_app/padding_demo.dart';
import 'package:learn_flutter_app/painting_board_demo.dart';
import 'package:learn_flutter_app/popup_menu_demo.dart';
import 'package:learn_flutter_app/positioned_demo.dart';
import 'package:learn_flutter_app/raisedbutton_demo.dart';
import 'package:learn_flutter_app/rotatedbox_demo.dart';
import 'package:learn_flutter_app/route_demo.dart';
import 'package:learn_flutter_app/route_pass_info_demo.dart';
import 'package:learn_flutter_app/row_demo.dart';
import 'package:learn_flutter_app/scaffold_demo.dart';
import 'package:learn_flutter_app/simple_dialog_demo.dart';
import 'package:learn_flutter_app/sized_box_demo.dart';
import 'package:learn_flutter_app/stack_demo.dart';
import 'package:learn_flutter_app/swiper_demo.dart';
import 'package:learn_flutter_app/tab_bar_demo.dart';
import 'package:learn_flutter_app/table_demo.dart';
import 'package:learn_flutter_app/text_demo.dart';
import 'package:learn_flutter_app/textfield_demo.dart';
import 'package:learn_flutter_app/theme_use_demo.dart';
import 'package:learn_flutter_app/transform_demo.dart';
import 'package:learn_flutter_app/url_launcher_demo.dart';
import 'package:learn_flutter_app/wrap_demo.dart';

void main() {
  runApp(MyApp());

  if (Platform.isAndroid) {
    var style = SystemUiOverlayStyle(statusBarColor: Colors.transparent);
    SystemChrome.setSystemUIOverlayStyle(style);
  }
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        accentColor: Colors.pink[300],
        primarySwatch: Colors.blue,
      ),
//      home: LongListDemo(items: List<String>.generate(500, (i) => "Item $i"),),
//    routes: {
//        '/first': (context) => FirstPage(),
//      '/second' : (context) => SecondPage()
//    },
//      initialRoute: '/first',
      home: HeroDemo(),
    );
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('First Page'),
      ),
      body: Center(
        child: Container(
          child: Column(
            children: <Widget>[
              Text('First Page'),
              RaisedButton(
                onPressed: () => Navigator.pushNamed(context, '/second'),
                child: Text('点击跳转'),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Center(
        child: Text('Second Page'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
