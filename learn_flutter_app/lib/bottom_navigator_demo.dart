
import 'package:flutter/material.dart';

class BottomNavigationDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _BottomNavigationDemoState();
  }
}

class _BottomNavigationDemoState extends State<BottomNavigationDemo>{
  int _selectIndex = 1;
  final _widgetOptions = [
    Text("Index 0: 信息"),
    Text('Index 1: 通讯录'),
    Text('Index 2: 发现')
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('BottomNavigationBar 示例'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.chat),title: Text('信息')),
            BottomNavigationBarItem(icon: Icon(Icons.contacts),title: Text('通讯录')),
            BottomNavigationBarItem(icon: Icon(Icons.account_circle),title: Text('发现')),
          ] ,
        currentIndex: _selectIndex,
        fixedColor: Colors.deepPurple,
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectIndex = index;
    });
  }
}