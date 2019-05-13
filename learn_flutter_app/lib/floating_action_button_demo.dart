
import 'package:flutter/material.dart';

class FloatingDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('FloatingActionButton示例'),
      ),
      body: Center(
        child: Text(
          'FloatingActionButton示例',
          style: TextStyle(fontSize: 28.0),
        ),
      ),
      floatingActionButton: Builder(builder: (BuildContext context){
        return FloatingActionButton(
          child: const Icon(Icons.add),
          tooltip: '请点击FloatingActionButton',
          foregroundColor: Colors.white,
          backgroundColor: Colors.blue,
          elevation: 7.0,
          highlightElevation: 14.0,
          onPressed: (){
            Scaffold.of(context).showSnackBar(
                SnackBar(content: Text('你点击了Button'))
            );
          },
          mini: false,
          shape: CircleBorder(),
          isExtended: false,
        );
      }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

}