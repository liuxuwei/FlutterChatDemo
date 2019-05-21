
import 'package:flutter/material.dart';

class SizedBoxDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('SizedBox设置具体尺寸实例'),
      ),
      body: SizedBox(
        height: 300.0,
        child: const Card(
          child: Text('SizedBox',
          style: TextStyle(
            fontSize: 36.0
          ),),
        ),
      ),
    );
  }
}