
import 'package:flutter/material.dart';

class BoxShadowDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('BoxShadow示例'),
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.grey,
                blurRadius: 8.0,  //模糊值
                spreadRadius: 8.0,     //扩展阴影半径
                offset: Offset(-1.0, 1.0)
              )
            ],
          ),
          child: Text('Box阴影效果', style: TextStyle(color: Colors.black, fontSize: 28.0),),
        ),
      ),
    );
  }
}