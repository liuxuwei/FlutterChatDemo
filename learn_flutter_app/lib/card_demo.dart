
import 'package:flutter/material.dart';

class CardDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Card布局示例'),
      ),
      body: Center(
        child: SizedBox(
          height: 184.0,
          child: Card(
            child: Column(
              children: <Widget>[
                ListTile(
                  title: Text('深圳市南山区深南大道23号', style: TextStyle(fontWeight: FontWeight.w300),),
                  subtitle: Text('创想科技'),
                  leading: Icon(
                    Icons.home,
                    color: Colors.lightBlue,
                  ),
                ),
                Divider(),
                ListTile(
                  title: Text('深圳市南湖区空的32号', style: TextStyle(fontWeight: FontWeight.w300),),
                  subtitle: Text('培训机构'),
                  leading: Icon(Icons.school, color: Colors.lightBlue,),
                ),
                Divider()
              ],
            ),
          ),
        ),
      ),
    );
  }

}