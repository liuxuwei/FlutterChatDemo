
import 'package:flutter/material.dart';

class LongListDemo extends StatelessWidget{
  final List<String> items;

  LongListDemo({Key key,@required this.items}): super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('长列表示例'),
      ),
      body: ListView.builder(
          itemBuilder: (context,index){
            return ListTile(
              leading: Icon(Icons.phone),
              title: Text('${items[index]}'),
              onTap: () => print('点击了第$index个'),
            );
          }
      ),
    );
  }

}