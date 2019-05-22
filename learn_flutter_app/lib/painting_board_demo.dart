
import 'dart:ui';

import 'package:flutter/material.dart';

class PaintingDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'CustomPaint绘制圆示例',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: SizedBox(
          width: 500.0,
          height: 500.0,
          child: CustomPaint(
            painter: PathPainter(),
          ),
        ),
      ),
    );
  }
}


//直线
class LinePainter extends CustomPainter{
  Paint _paint = Paint()
  ..color = Colors.black
  ..strokeCap = StrokeCap.square
  ..isAntiAlias = true
  ..strokeWidth = 3.0
  ..style = PaintingStyle.stroke;


  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawLine(Offset(20.0, 20.0), Offset(300.0, 20.0), _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}


//圆
class CirclePainter extends CustomPainter{
  Paint _paint = Paint()
    ..color = Colors.grey
    ..strokeCap = StrokeCap.square
    ..isAntiAlias = true
    ..strokeWidth = 3.0
    ..style = PaintingStyle.fill;


  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawCircle(Offset(200.0, 150.0), 150.0, _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

//椭圆
class OvalPainter extends CustomPainter{
  Paint _paint = Paint()
    ..color = Colors.grey
    ..strokeCap = StrokeCap.square
    ..isAntiAlias = true
    ..strokeWidth = 3.0
    ..style = PaintingStyle.fill;


  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawOval(Rect.fromPoints(Offset(80.0, 200.0), Offset(300.0, 300.0)), _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}


//圆角矩形
class RRectPainter extends CustomPainter{
  Paint _paint = Paint()
    ..color = Colors.grey
    ..strokeCap = StrokeCap.square
    ..isAntiAlias = true
    ..strokeWidth = 3.0
    ..style = PaintingStyle.stroke;


  @override
  void paint(Canvas canvas, Size size) {
    Rect rect = Rect.fromCircle(center: Offset(200.0, 200.0), radius: 100.0);
    RRect rRect = RRect.fromRectAndRadius(rect, Radius.circular(20.0));
    canvas.drawRRect(rRect, _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

//嵌套圆角矩形
class DRectPainter extends CustomPainter{
  Paint _paint = Paint()
    ..color = Colors.grey
    ..strokeCap = StrokeCap.square
    ..isAntiAlias = true
    ..strokeWidth = 3.0
    ..style = PaintingStyle.stroke;


  @override
  void paint(Canvas canvas, Size size) {
    Rect rect1 = Rect.fromCircle(center: Offset(200.0, 200.0), radius: 100.0);
    Rect rect2 = Rect.fromCircle(center: Offset(200.0, 200.0), radius: 50.0);

    RRect outer = RRect.fromRectAndRadius(rect1, Radius.circular(20.0));
    RRect inner = RRect.fromRectAndRadius(rect2, Radius.circular(10.0));

    canvas.drawDRRect(outer,inner, _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

//点
class PointPainter extends CustomPainter{
  Paint _paint = Paint()
    ..color = Colors.grey
    ..strokeCap = StrokeCap.square
    ..isAntiAlias = true
    ..strokeWidth = 3.0
    ..style = PaintingStyle.fill;


  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawPoints(
        PointMode.lines,
        [
          Offset(50.0, 60.0),
          Offset(40.0, 90.0),
          Offset(100.0, 100.0),
          Offset(300.0, 350.0),
          Offset(400.0, 80.0),
          Offset(200.0, 200.0),
        ],
        _paint..color = Colors.grey);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

//弧
class ArcPainter extends CustomPainter{
  Paint _paint = Paint()
    ..color = Colors.grey
    ..strokeCap = StrokeCap.square
    ..isAntiAlias = true
    ..strokeWidth = 3.0
    ..style = PaintingStyle.stroke;


  @override
  void paint(Canvas canvas, Size size) {
    const PI = 3.1415926;
    Rect rect = Rect.fromCircle(center: Offset(100.0, 0.0), radius: 100.0);
    canvas.drawArc(rect, 0.0, PI / 2, true, _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

//路径
class PathPainter extends CustomPainter{
  Paint _paint = Paint()
    ..color = Colors.grey
    ..strokeCap = StrokeCap.square
    ..isAntiAlias = true
    ..strokeWidth = 3.0
    ..style = PaintingStyle.stroke;


  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path()..moveTo(100.0, 100.0);
    path.lineTo(200.0, 300.0);
    path.lineTo(100.0, 200.0);
    path.lineTo(150.0, 250.0);
    path.lineTo(150.0, 500.0);
    path.close();
    canvas.drawPath(path, _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
