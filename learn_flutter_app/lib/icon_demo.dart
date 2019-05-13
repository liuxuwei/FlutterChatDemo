
import 'package:flutter/material.dart';

class IconDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('图标组件实例'),
      ),
      body: Icon(Icons.phone, color: Colors.green[500], size: 80.0,),
    );
  }
}

class IconButtonDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('图标按钮组件示例'),
      ),
      body: Center(
        child: IconButton(
            icon: Icon(Icons.volume_up, size: 48.0,),
            tooltip: '按下操作',
            onPressed: (){
              print('单击操作');
            }),
      ),
    );
  }

}