
import 'package:flutter/material.dart';

class AppBarDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('AppBar应用按钮示例'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            tooltip: '搜索',
            onPressed: (){},
          ),
          IconButton(
            icon: Icon(Icons.add),
            tooltip: '添加',
            onPressed: (){},
          )
        ],
      ),
    );
  }

}