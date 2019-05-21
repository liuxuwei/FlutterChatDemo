import 'package:flutter/material.dart';

class FirstPageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('导航页面示例'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SecondPageDemo()));
          },
          child: Text('跳转到第二个页面'),
        ),
      ),
    );
  }
}


class SecondPageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('导航页面示例'),
      ),
      body: Center(
        child: RaisedButton(
            onPressed: (){
              Navigator.pop(context);
            },
          child: Text('返回页面'),
        ),
      ),
    );
  }

}