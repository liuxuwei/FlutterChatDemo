
import 'package:flutter/material.dart';

class PositionedDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Positioned 示例'),
      ),
      body: Center(
        child: Stack(
          children: <Widget>[
            Image.asset('images/7.jpg'),
            Positioned(
              bottom: 50.0,
              right: 50.0,
              child: Text(
                  'Love Lele',
                style: TextStyle(
                  fontSize: 36.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'serif',
                  color: Colors.lightBlue
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}