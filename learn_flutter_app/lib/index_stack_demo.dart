
import 'package:flutter/material.dart';

class IndexStackDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var stack = IndexedStack(
      index: 0,
      alignment: Alignment.topLeft,
      children: <Widget>[
        CircleAvatar(
          backgroundImage: AssetImage('images/9.jpg'),
          radius: 100.0,
        ),
        Container(
          decoration: BoxDecoration(color: Colors.black38),
          child: Text(
            '这是老白',
            style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
        ),
      ],
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('IndexStack 示例'),
      ),
      body: Center(
        child: stack,
      ),
    );
  }
}