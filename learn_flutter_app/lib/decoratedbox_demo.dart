import 'package:flutter/material.dart';

class DecoratedBoxDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('BoxDecoration装饰盒子——背景图示例'),
      ),
      body: Center(
        child: Container(
          width: 300.0,
          height: 300.0,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey, width: 4.0),
              borderRadius: BorderRadius.circular(36.0),
              color: Colors.grey,
              image: DecorationImage(
                  image: ExactAssetImage('images/3.jpg'), fit: BoxFit.cover)),
        ),
      ),
    );
  }
}
