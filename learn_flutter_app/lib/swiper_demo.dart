import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class SwiperDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text('轮播图Swiper示例'),
        ),
        body: Container(
          height: 240.0,
          child: Swiper(
            autoplay: true,
            itemCount: 9,
            itemBuilder: (context, index) {
              return Image.asset(
                "images/${index + 1}.jpg",
                fit: BoxFit.fill,
              );
            },
            pagination: SwiperPagination(),
            controller: SwiperController(),
          ),
        ));
  }
}
