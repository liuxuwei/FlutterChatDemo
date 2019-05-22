import 'package:flutter/material.dart';

class RotatedBoxDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'RotatedBox旋转盒子示例',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: RotatedBox(
          quarterTurns: 3,
          child: Text(
            'RotatedBox 旋转盒子',
            style: TextStyle(fontSize: 28.0),
          ),
        ),
      ),
    );
  }
}
