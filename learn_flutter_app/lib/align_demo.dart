
import 'package:flutter/material.dart';

class AlignDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
     appBar: AppBar(
       title: Text('Align对齐布局示例'),
     ),
      body: Stack(
        children: <Widget>[
          //左上角
          Align(
            alignment: FractionalOffset(0.0, 0.0),
            child: Image.asset('images/1.jpg', width: 128.0, height: 128.0),
          ),
          //右上角
          Align(
            alignment: FractionalOffset(1.0, 0.0),
            child: Image.asset('images/1.jpg', width: 128.0, height: 128.0),
          ),
          //水平垂直方向居中
          Align(
            alignment: FractionalOffset.center,
            child: Image.asset('images/3.jpg', width: 128.0, height: 128.0),
          ),
          //左下角
          Align(
            alignment: FractionalOffset.bottomLeft,
            child: Image.asset('images/2.jpg', width: 128.0, height: 128.0),
          ),
          //右下角
          Align(
            alignment: FractionalOffset.bottomRight,
            child: Image.asset('images/2.jpg', width: 128.0, height: 128.0),
          ),
        ],
      ),
    );
  }
}