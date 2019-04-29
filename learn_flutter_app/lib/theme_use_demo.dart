
import 'package:flutter/material.dart';

class ThemeUseDemo extends StatelessWidget{
  final String title;

  ThemeUseDemo({Key key, @required this.title}): super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Container(
          color: Theme.of(context).accentColor,    //获取当前主题的accentColor
          child: Text('带有颜色的文本组件', style: Theme.of(context).textTheme.title,),
        ),
      ),
      floatingActionButton: Theme(
          data: Theme.of(context).copyWith(accentColor: Colors.grey),
          child: FloatingActionButton(onPressed: null, child: Icon(Icons.add),)
      ),
    );
  }

}