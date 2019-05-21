
import 'package:flutter/material.dart';

class GestureDetectorDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('按下处理demo'),
      ),
      body: Center(
        child: MyButton(),
      ),
    );
  }
}


class MyButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap: (){
        final snackBar = SnackBar(content: Text('你已按下'),);
        Scaffold.of(context).showSnackBar(snackBar);
      },
      child: Container(
        padding: EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: Theme.of(context).buttonColor,
          borderRadius: BorderRadius.circular(10.0)
        ),
        child: Text('测试按钮'),
      ),
    );
  }
}