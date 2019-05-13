
import 'package:flutter/material.dart';

class RouteHomeDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _RouteHomeDemoState();
  }

}

class _RouteHomeDemoState extends State<RouteHomeDemo>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App 示例'),
      ),
      body: Center(
        child: Text('主页'),
      ),
    );
  }

}