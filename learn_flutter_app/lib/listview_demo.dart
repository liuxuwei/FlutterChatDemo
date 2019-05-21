import 'package:flutter/material.dart';

class ListViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var list = <Widget>[
      ListTile(
        title: Text(
          '广州市黄埔大道建中路店',
          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18.0),
        ),
        subtitle: Text('广州市福黄埔大道建中路43号'),
        leading: Icon(
          Icons.fastfood,
          color: Colors.orange,
        ),
      ),
      ListTile(
        title: Text(
          '广州市黄埔大道建中路店',
          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18.0),
        ),
        subtitle: Text('广州市福黄埔大道建中路43号'),
        leading: Icon(
          Icons.airplay,
          color: Colors.blue,
        ),
      ),
      ListTile(
        title: Text(
          '广州市黄埔大道建中路店',
          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18.0),
        ),
        subtitle: Text('广州市福黄埔大道建中路43号'),
        leading: Icon(
          Icons.local_hospital,
          color: Colors.green,
        ),
      ),
      ListTile(
        title: Text(
          '广州市黄埔大道建中路店',
          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18.0),
        ),
        subtitle: Text('广州市福黄埔大道建中路43号'),
        leading: Icon(
          Icons.computer,
          color: Colors.deepPurple,
        ),
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('ListView布局示例'),
      ),
      body: Center(
        child: ListView(
          children: list,
          physics: ScrollPhysics(),
        ),
      ),
    );
  }
}

class ListViewTextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('滚动布局示例'),
      ),
      body: ListView(
        children: <Widget>[
          Center(
            child: Text(
              '\n天河区公园',
              style: TextStyle(fontSize: 30.0),
            ),
          ),
          Center(
            child: Text(
              '天河公园',
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          Center(
            child: Text(
              '''天河公园天河公园天河公园天河公园天河公园
            天河公园天河公园天河公园天河公园天河公园天河公
            园天河公园天河公园天河公园天河公园天河公园天河公园
            天河公园天河公园天河公园''',
              style: TextStyle(fontSize: 14.0),
            ),
          ),
        ],
      ),
    );
  }
}
