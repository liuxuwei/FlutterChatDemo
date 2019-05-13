
import 'package:flutter/material.dart';

class RaisedButtonDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('RaisedButton示例'),),
      body: Center(
        child: RaisedButton(
            onPressed: (){
              print('点击button');
            } ,
            child: Text('RaisedButton'),
        ),
      ),
    );
  }

}