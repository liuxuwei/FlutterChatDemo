
import 'package:flutter/material.dart';

class LoadingPage extends StatefulWidget {
  @override
  _LoadingPageState createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  
  @override
  void initState() {
    // TODO: implement initState
     super.initState();
     Future.delayed(Duration(seconds: 3),(){
       print('Flutter即时通讯App界面实现');
       Navigator.of(context).pushReplacementNamed('app');
     });
  }
  
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: <Widget>[
          Image.asset('images/qq.jpg', fit: BoxFit.cover,)
        ],
      ),
    );
  }
}
