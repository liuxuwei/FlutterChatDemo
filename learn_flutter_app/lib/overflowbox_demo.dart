
import 'package:flutter/material.dart';

class OverflowBoxDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('OverflowBox 溢出父容器显示示例'),
      ),
      body: Container(
        color: Colors.green,
        width: 200.0,
        height: 200.0,
        padding: const EdgeInsets.all(5.0),
        child: OverflowBox(
          alignment: Alignment.topLeft,
          maxHeight: 500.0,
          maxWidth: 500.0,
          child: Container(
            color: Colors.blueGrey,
            width: 400.0,
            height: 400.0,
          ),
        ),
      ),
    );
  }
}