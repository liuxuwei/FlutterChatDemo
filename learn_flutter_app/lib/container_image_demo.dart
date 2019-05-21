import 'package:flutter/material.dart';

class ContainerImageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget container = Container(
      decoration: BoxDecoration(color: Colors.grey),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              //使用Expanded防止内容溢出
              Expanded(
                child: Container(
                  width: 150.0,
                  height: 150.0,
                  decoration: BoxDecoration(
                    border: Border.all(width: 10.0, color: Colors.blueGrey),
                    borderRadius: const BorderRadius.all(const Radius.circular(8.0))
                  ),
                  margin: const EdgeInsets.all(4.0),
                  child: Image.asset('images/1.jpg'),
                ),
              ),
              Expanded(
                child: Container(
                  height: 150.0,
                  width: 150.0,
                  decoration: BoxDecoration(
                    border: Border.all(width: 10.0, color: Colors.blueGrey),
                    borderRadius: BorderRadius.all(const Radius.circular(8.0))
                  ),
                  margin: const EdgeInsets.all(4.0),
                  child: Image.asset('images/2.jpg'),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  width: 150.0,
                  height: 150.0,
                  decoration: BoxDecoration(
                      border: Border.all(width: 10.0, color: Colors.blueGrey),
                      borderRadius: const BorderRadius.all(const Radius.circular(8.0))
                  ),
                  margin: const EdgeInsets.all(4.0),
                  child: Image.asset('images/3.jpg'),
                ),
              ),
              Expanded(
                child: Container(
                  height: 150.0,
                  width: 150.0,
                  decoration: BoxDecoration(
                      border: Border.all(width: 10.0, color: Colors.blueGrey),
                      borderRadius: BorderRadius.all(const Radius.circular(8.0))
                  ),
                  margin: const EdgeInsets.all(4.0),
                  child: Image.asset('images/2.jpg'),
                ),
              ),
            ],
          )
        ],
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Container布局容器示例'),
      ),
      body: container,
    );
  }
}
