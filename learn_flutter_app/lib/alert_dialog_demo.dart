
import 'package:flutter/material.dart';

class AlertDialogDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('AlertDialog 组件示例'),
      ),
      body: Center(
        child: AlertDialog(
          title: Text('提示'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('是否要删除？'),
                Text('一旦删除数据不可恢复！')
              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('确定'),
              onPressed: (){},
            ),
            FlatButton(
              child: Text('取消'),
              onPressed: (){
              },
            ),
          ],
        ),
      ),
    );
  }
}