
import 'package:flutter/material.dart';

class GridViewDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    List<Container> _buildGridTitleList(int count){
      return List<Container>.generate(
          count, (index) => Container(
        child: Image.asset('images/${index+1}.jpg'),
      )
      );
    }

    Widget buildGrid(){
      return GridView.extent(
        physics: ScrollPhysics(),
          maxCrossAxisExtent: 150.0,  //次轴的宽度
          padding: const EdgeInsets.all(4.0),
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
        children: _buildGridTitleList(9)
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('GridView九宫格示例'),
      ),
      body: Center(
        child: buildGrid(),
      ),
    );
  }
}