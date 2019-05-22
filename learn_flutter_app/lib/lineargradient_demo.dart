
import 'package:flutter/material.dart';

class LinearGradientDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('LinearGradient线性渐变效果'),
      ),
      body: Center(
        child: DecoratedBox(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: const FractionalOffset(0.5, 0.0),
                  end: const FractionalOffset(1.0, 1.0),
                  colors: <Color>[
                    Colors.red,
                    Colors.green,
                    Colors.blue,
                    Colors.grey,
                  ]
              )
            ),
          child: Container(
            width: 280.0,
            height: 280.0,
            child: Center(
              child: Text('LinearGradient线性渐变效果', style: TextStyle(color: Colors.black, fontSize: 28.0),),
            ),
          ),
        ),
      ),
    );
  }
}

class RadialGradientDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('RadialGradient环形渐变效果'),
      ),
      body: Center(
        child: DecoratedBox(
          decoration: BoxDecoration(
              gradient: RadialGradient(
                  center: const Alignment(-0.0, -0.0),
                  radius: 0.5,
                  colors: <Color>[
                    Colors.red,
                    Colors.green,
                    Colors.blue,
                    Colors.grey,
                  ]
              )
          ),
          child: Container(
            width: 280.0,
            height: 280.0,
            child: Center(
              child: Text('LinearGradient线性渐变效果', style: TextStyle(color: Colors.black, fontSize: 28.0),),
            ),
          ),
        ),
      ),
    );
  }
}