

import 'package:flutter/material.dart';

class HorizontalListDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('水平列表示例'),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 20.0),
        height: 200.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Container(
              width: 160.0,
              color: Colors.lightBlue,
            ),
            Container(
              width: 160.0,
              color: Colors.green,
            ),
            Container(
              width: 160.0,
              color: Colors.amber,
            ),
            Container(
              width: 160.0,
              color: Colors.deepPurple,
            ),
            Container(
              width: 160.0,
              color: Colors.black,
            ),
            Container(
              width: 160.0,
              color: Colors.pinkAccent,
            ),
            Container(
              width: 160.0,
              color: Colors.red,
              child: Column(
                children: <Widget>[
                  Text('水平' ,style: TextStyle(fontWeight: FontWeight.bold, fontSize: 36.0),),
                  Text('列表',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 36.0),),
                  Icon(Icons.list)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}