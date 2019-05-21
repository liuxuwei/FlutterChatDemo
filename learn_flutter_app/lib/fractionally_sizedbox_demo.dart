
import 'package:flutter/material.dart';

class FractionallySizedBoxDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('FractionallySizedBox 百分比布局示例'),
      ),
      body: Container(
        color: Colors.blueGrey,
        height: 200.0,
        width: 200.0,
        child: FractionallySizedBox(
          alignment: Alignment.topLeft,
          widthFactor: 0.5,
          heightFactor: 1.5,
          child: Container(
            color: Colors.green,
          ),
        ),
      ),
    );
  }
}