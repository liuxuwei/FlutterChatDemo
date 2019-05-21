
import 'package:flutter/material.dart';

class WrapDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Wrap自动换行布局示例'),
      ),
      body: Wrap(
        spacing: 8.0,
        runSpacing: 4.0,
        children: <Widget>[
          Chip(
            avatar: CircleAvatar(
              backgroundColor: Colors.lightGreen.shade800,
              child: Text('西门', style: TextStyle(fontSize: 10.0),),
            ),
            label: Text('西门吹雪'),
          ),
          Chip(
            avatar: CircleAvatar(
              backgroundColor: Colors.lightBlue.shade700,
              child: Text('司空', style: TextStyle(fontSize: 10.0),),
            ),
            label: Text('司空摘星'),
          ),
          Chip(
            avatar: CircleAvatar(
              backgroundColor: Colors.orange.shade800,
              child: Text('婉清', style: TextStyle(fontSize: 10.0),),
            ),
            label: Text('木婉清'),
          ),
          Chip(
            avatar: CircleAvatar(
              backgroundColor: Colors.blue.shade900,
              child: Text('一郎', style: TextStyle(fontSize: 10.0),),
            ),
            label: Text('萧一郎'),
          ),
        ],
      ),
    );
  }
}