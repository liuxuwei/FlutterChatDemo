
import 'package:flutter/material.dart';

class FlatButtonDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('FlatButton 扁平按钮组件示例'),
      ),
      body: Center(
        child: FlatButton(
            onPressed: (){},
            child: Text('FlatButton', style: TextStyle(fontSize: 28.0),)),
      ),
    );
  }

}