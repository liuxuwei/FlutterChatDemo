
import 'package:flutter/material.dart';

class PopupMenuDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('PopupMenuButton组件示例'),
      ),
      body: Center(
        child: FlatButton(
            onPressed: (){},
            child: PopupMenuButton<ItemView>(
                itemBuilder: (BuildContext context) =>
                    <PopupMenuEntry<ItemView>>[
                      const PopupMenuItem(
                          child: ItemView(title: '添加成员',icon: Icons.add,)
                      ),
                      const PopupMenuItem(
                          child: ItemView(title: '锁定会议',icon: Icons.lock,)
                      ),
                      const PopupMenuItem(
                          child: ItemView(title: '修改布局',icon: Icons.change_history,)
                      ),
                      const PopupMenuItem(
                          child: ItemView(title: '挂断所有',icon: Icons.stop,)
                      ),
                    ]
            )
        ),
      ),
    );
  }
}

class ItemView extends StatelessWidget{
  final String title;
  final IconData icon;

  const ItemView({this.title, this.icon});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: <Widget>[
        Icon(icon),
        Padding(
        padding: EdgeInsets.only(left: 15.0),
        ),
        Text(title, style: TextStyle(fontSize: 12.0),)
      ],
    );
  }

}