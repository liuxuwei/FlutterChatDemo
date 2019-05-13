
import 'package:flutter/material.dart';

class ListDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('基础列表示例'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.alarm),
            title: Text('Alarm'),
          ),
          ListTile(
            leading: Icon(Icons.alarm),
            title: Text('Alarm'),
          ),
          ListTile(
            leading: Icon(Icons.alarm),
            title: Text('Alarm'),
          ),
          ListTile(
            leading: Icon(Icons.alarm),
            title: Text('Alarm'),
          ),
          ListTile(
            leading: Icon(Icons.alarm),
            title: Text('Alarm'),
          ),
          ListTile(
            leading: Icon(Icons.airplay),
            title: Text('Airplay'),
          ),
          ListTile(
            leading: Icon(Icons.alarm),
            title: Text('Alarm'),
          ),
          ListTile(
            leading: Icon(Icons.alarm),
            title: Text('Alarm'),
          ),
          ListTile(
            leading: Icon(Icons.alarm),
            title: Text('Alarm'),
          ),
          ListTile(
            leading: Icon(Icons.alarm),
            title: Text('Alarm'),
          ),
          ListTile(
            leading: Icon(Icons.phone),
            title: Text('Phone'),
          ),
        ],
      ),
    );
  }

}