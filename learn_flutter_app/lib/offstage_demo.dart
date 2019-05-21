import 'package:flutter/material.dart';

class OffStageDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _OffStageDemoState();
  }
}

class _OffStageDemoState extends State<OffStageDemo> {
  bool offstage = true;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("OffStage控制是否显示组件示例"),
      ),
      body: Center(
        child: Offstage(
          offstage: offstage,
          child: Text(
            '我出来了',
            style: TextStyle(fontSize: 36.0),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          offstage = !offstage;
        });
      }),
    );
  }
}
