

import 'package:flutter/material.dart';

class ScaffoldDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Scaffold 脚手架组件示例'),
      ),
      body: Center(
        child: Text('Scaffold'),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(height: 50.0,),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (){},
        tooltip: '增加',
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

}