import 'package:flutter/material.dart';

class ImageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Image.network(
        'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1557031116922&di=7b26a0ab71dab1699d1431123a01d6bf&imgtype=0&src=http%3A%2F%2Fimg2.mukewang.com%2F5b4c075b000198c216000586.jpg',
        fit: BoxFit.fitWidth,
      ),
    );
  }
}
