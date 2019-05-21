
import 'package:flutter/material.dart';

class TransformDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Transform矩阵转换示例'),
      ),
      body: Center(
        child: Container(
          color: Colors.grey,
          child: Transform(
            alignment: Alignment.topRight,
              transform: Matrix4.rotationZ(0.3),
            child: Container(
              padding: const EdgeInsets.all(8.0),
              color: const Color(0xFFE8581C),
              child: const Text('Transform 矩阵转换'),
            ),
          ),
        ),
      ),
    );
  }
}