
import 'package:flutter/material.dart';

class FitBoxDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('FittedBox 缩放布局示例'),
      ),
      body: Container(
        color: Colors.grey,
        width: 250.0,
        height: 250.0,
        child: FittedBox(
          fit: BoxFit.contain,
          alignment: Alignment.topLeft,
          child: Container(
            color: Colors.deepOrange,
            child: Text('缩放布局'),
          ),
        ),
      ),
    );
  }
}