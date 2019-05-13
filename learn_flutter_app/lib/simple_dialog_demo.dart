
import 'package:flutter/material.dart';

class SimpleDialogDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('SimpleDialog 组件示例'),
      ),
      body: Center(
        child: SimpleDialog(
          title: const Text('对话框标题'),
          children: <Widget>[
            SimpleDialogOption(
              onPressed: ()=> print('第一行信息'),
              child: const Text('第一行信息'),
            ),
            SimpleDialogOption(
              onPressed: ()=> print('第二行信息'),
              child: const Text('第二行信息'),
            ),
          ],
        ),
      ),
    );
  }
}