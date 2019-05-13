
import 'package:flutter/material.dart';

class GridDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('网格列表示例'),
      ),
      body: GridView.count(
          crossAxisCount: 3,
        primary: false,
        padding: const EdgeInsets.all(20.0),
        crossAxisSpacing: 30.0,
        children: <Widget>[
          const Text('第一行第一列'),
          const Text('第一行第2列'),
          const Text('第一行第3列'),
          const Text('第2行第一列'),
          const Text('第2行第2列'),
          const Text('第2行第3列'),
          const Text('第3行第一列'),
          const Text('第3行第2列'),
          const Text('第3行第3列'),
          const Text('第4行第一列'),
          const Text('第4行第2列'),
          const Text('第4行第3列'),
          const Text('第5行第一列'),
          const Text('第5行第2列'),
          const Text('第5行第3列'),
        ],
      ),
    );
  }

}