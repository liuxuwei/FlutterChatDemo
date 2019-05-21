import 'package:flutter/material.dart';

class FirstScreenDemo extends StatelessWidget {
  var result;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('页面跳转返回数据示例'),
        centerTitle: true,
      ),
      body: Center(
//          child: RaisedButton(
//              onPressed: (){_navigateToNewPage(context);},
//            child: Text('跳转'),
//          )
      child: RouteButton(),
      ),
    );
  }

  _navigateToNewPage(BuildContext context) async{
    final result = Navigator.push(context, MaterialPageRoute(builder: (context) => SecondPage()));

    Scaffold.of(context).showSnackBar(SnackBar(content: Text('$result')));

  }
}

class RouteButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RaisedButton(
      onPressed: (){_navigateToPage(context);},
      child: Text('跳转到第二个页面'),
    );
  }

  _navigateToPage(BuildContext context) async {
    final returnInfo = await Navigator.push(
        context, MaterialPageRoute(builder: (context) => SecondPage()));

    Scaffold.of(context).showSnackBar(SnackBar(content: Text('$returnInfo')));
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('选择一条数据'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(
                onPressed: () {
                  Navigator.pop(context, 'hi google');
                },
                child: Text('hi google'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(
                onPressed: () {
                  Navigator.pop(context, 'hi flutter');
                },
                child: Text('hi flutter'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
