
import 'package:flutter/material.dart';

class TableDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Table表格布局示例'),
      ),
      body: Center(
        child: Table(
          columnWidths: const <int, TableColumnWidth>{
            0: FixedColumnWidth(100.0),
            1: FixedColumnWidth(40.0),
            2: FixedColumnWidth(80.0),
            3: FixedColumnWidth(80.0),
          },
          border: TableBorder.all(
            color: Colors.black38,
            width: 2.0,
              style: BorderStyle.solid
          ),
          children: const <TableRow>[
            TableRow(
              children: <Widget>[
                Text("姓名"),
                Text("性别"),
                Text("年龄"),
                Text("身高"),
              ]
            ),
            TableRow(
                children: <Widget>[
                  Text("张三"),
                  Text("男"),
                  Text("20"),
                  Text("180"),
                ]
            ),
            TableRow(
                children: <Widget>[
                  Text("李四"),
                  Text("男"),
                  Text("22"),
                  Text("175"),
                ]
            ),
          ],
        ),
      ),
    );
  }
}