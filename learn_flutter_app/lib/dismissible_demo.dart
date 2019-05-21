import 'package:flutter/material.dart';

class DismissibleDemo extends StatelessWidget {
  List<String> items = List<String>.generate(30, (i) => "列表项 ${i + 1}");

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('滑动删除示例'),
      ),
      body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return Dismissible(
                key: Key(item),
                onDismissed: (direction){
                  items.removeAt(index);
                  Scaffold.of(context).showSnackBar(
                    SnackBar(content: Text('$item被删除了'))
                  );
                },
                child: ListTile(
                  title: Text('$item'),
                )
            );
          }),
    );
  }
}
