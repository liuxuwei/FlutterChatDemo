

import 'package:flutter/material.dart';

class ContainerDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('容器组件实例'),
      ),
      body: Center(
        child: Container(
          width: 200.0,
          height: 200.0,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Colors.grey,
              width: 8.0,
            ),
            borderRadius: const BorderRadius.all(const Radius.circular(8.0))
          ),
          child: Text(
            'Flutter',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 28.0),
          ),
        ),
      ),
    );
  }

}