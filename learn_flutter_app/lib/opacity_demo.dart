
import 'package:flutter/material.dart';

class OpacityDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Opacity不透明度示例'),
      ),
      body: Center(
        child: Opacity(
            opacity: 0.3,
          child: Container(
            height: 100.0,
            width: 250.0,
            decoration: BoxDecoration(
              color: Colors.black
            ),
            child: Text('不透明度0.3', style: TextStyle(color: Colors.white, fontSize: 28.0),),
          ),
        ),
      ),
    );
  }
}