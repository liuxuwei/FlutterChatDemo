import 'package:flutter/material.dart';

class AspectRatioDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('AspectRatio 调整宽高比示例'),
      ),
      body: Container(
        height: 100.0,
        child: AspectRatio(
          aspectRatio: 1.5,
          child: Container(
            color: Colors.green,
          ),
        ),
      ),
    );
  }
}
