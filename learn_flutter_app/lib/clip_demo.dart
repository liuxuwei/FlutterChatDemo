
import 'package:flutter/material.dart';

// 裁剪圆形
class ClipOvalDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('ClipOval圆形裁剪示例'),
      ),
      body: Center(
        child: ClipOval(
          child: SizedBox(
            width: 300.0,
            height: 300.0,
            child: Image.asset('images/7.jpg', fit: BoxFit.fill,),
          ),
        ),
      ),
    );
  }
}

//圆形矩形裁剪
class ClipRRectDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('ClipRRect圆角矩形裁剪示例'),
      ),
      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(30.0)),
          child: SizedBox(
            width: 300.0,
            height: 300.0,
            child: Image.asset('images/7.jpg', fit: BoxFit.fill,),
          ),
        ),
      ),
    );
  }
}

//矩形裁剪
class ClipRectDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('ClipRect 矩形剪裁示例'),
      ),
      body: Center(
        child: ClipRect(
          clipper: RectClipper(),
          child: SizedBox(
            width: 300.0,
            height: 300.0,
            child: Image.asset('images/7.jpg', fit: BoxFit.fill,),
          ),
        ),
      ),
    );
  }
}

//自定义clipper 类型为Rect
class RectClipper extends CustomClipper<Rect>{
  @override
  Rect getClip(Size size) {
    // TODO: implement getClip
    return Rect.fromLTRB(100.0, 100.0, size.width - 100, size.height - 100);
  }

  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}

//路径剪裁
class ClipPathDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('ClipPath 路径剪裁示例'),
      ),
      body: Center(
        child: ClipPath(
          clipper: TriangleCliper(),
          child: SizedBox(
            width: 300.0,
            height: 300.0,
            child: Image.asset('images/7.jpg', fit: BoxFit.fill,),
          ),
        ),
      ),
    );
  }
}

class TriangleCliper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    Path path = Path();
    path.moveTo(50.0, 50.0);
    path.lineTo(50.0, 10.0);
    path.lineTo(100.0, 50.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}