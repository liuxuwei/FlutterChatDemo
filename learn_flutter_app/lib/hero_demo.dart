
import 'package:flutter/material.dart';

class HeroDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('页面切换动画图一'),
      ),
      body: GestureDetector(
        child: Hero(
            tag: '第一张图片',
            child: Image.asset('images/7.jpg')
        ),
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (_){
            return SecondHeroDemo();
          }));
        },
      ),
    );
  }
}

class SecondHeroDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('页面切换动画二'),
      ),
      body: GestureDetector(
        child: Hero(
            tag: '第二张图片',
            child: Image.asset('images/9.jpg')
        ),
        onTap: (){
          Navigator.pop(context);
        },
      ),
    );
  }
}