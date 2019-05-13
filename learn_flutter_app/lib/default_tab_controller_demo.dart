

import 'package:flutter/material.dart';

class DefaultTabControllerDemo extends StatelessWidget{
  final List<Tab> myTabs = <Tab>[
    Tab(text: '选项卡一',),
    Tab(text: '选项卡二',)
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
        length: myTabs.length,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(tabs: myTabs),
          ),
          body: TabBarView(
              children: myTabs.map((Tab tab){
                return Center(
                  child: Text(tab.text),
                );
              }).toList()),
        )
    );
  }

}