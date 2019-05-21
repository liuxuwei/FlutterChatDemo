
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CupertinoButtonDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('CupertinoButton组件示例'),
      ),
      body: Center(
        child: CupertinoButton(
            child: Text('CupertinoButton'),
            color: Colors.blue,
            onPressed: (){}),
      ),
    );
  }
}