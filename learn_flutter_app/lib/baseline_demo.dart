
import 'package:flutter/material.dart';

class BaselineDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('BaseLine 基准线布局示例'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Baseline(
            baseline: 80.0,
            baselineType: TextBaseline.alphabetic,
            child: Text(
              'AaBbCc',
              style: TextStyle(
                fontSize: 18.0,
                textBaseline: TextBaseline.alphabetic
              ),
            ),
          ),
          Baseline(
            baseline: 80.0,
            baselineType: TextBaseline.alphabetic,
            child: Container(
              width: 40.0,
              height: 40.0,
              color: Colors.green,
            ),
          ),
          Baseline(
            baseline: 80.0,
            baselineType: TextBaseline.alphabetic,
            child: Text(
              'DdEeFf',
              style: TextStyle(
                fontSize: 26.0,
                textBaseline: TextBaseline.alphabetic
              ),
            ),
          ),
        ],
      ),
    );
  }
}