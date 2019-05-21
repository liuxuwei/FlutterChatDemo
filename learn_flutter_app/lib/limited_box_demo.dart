
import 'package:flutter/material.dart';

class LimitedBoxDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('LimitedBox 限定宽高布局示例'),
      ),
      body: Row(
        children: <Widget>[
          Container(
            color: Colors.grey,
            width: 100.0,
          ),
          LimitedBox(
            maxWidth: 150.0,
            child: Container(
              color: Colors.lightGreen,
              width: 250.0,
            ),
          )
        ],
      ),
    );
  }
}