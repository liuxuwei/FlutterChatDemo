
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CupertinoAlertDialogDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('CupertinoAlertDialog组件示例'),
      ),
      body: Center(
        child: CupertinoAlertDialog(
          title: Text('提示'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('是否要删除'),
                Text('一旦删除数据不可恢复')
              ],
            ),
          ),
          actions: <Widget>[
            CupertinoDialogAction(
              child: Text('确定'),
            ),
            CupertinoDialogAction(
              child: Text('取消'),
            ),
          ],
        ),
      ),
    );
  }
}