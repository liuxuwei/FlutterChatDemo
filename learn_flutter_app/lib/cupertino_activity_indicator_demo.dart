
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoActivityIndicatorDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('CupertinoIndicator 示例'),
      ),
      body: Center(
        child: CupertinoActivityIndicator(
          radius: 60.0,
        ),
      ),
    );
  }
}