import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoPageDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _CupertinoPageDemoState();
  }
}

class _CupertinoPageDemoState extends State<CupertinoPageDemo> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          backgroundColor: CupertinoColors.lightBackgroundGray,
          items: [
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.home), title: Text('主页')),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.conversation_bubble), title: Text('聊天')),
          ],
        ),
        tabBuilder: (context, index){
          return CupertinoTabView(
            builder: (context){
              switch(index){
                case 0:
                  return HomePage();
                  break;
                case 1:
                  return ChatPage();
                  break;
                default:
                  return Container();
              }
            },
          );
        }
    );
  }
}

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('聊天面板'),
        trailing: Icon(CupertinoIcons.add),
        leading: Icon(CupertinoIcons.back),
      ),
        child: Center(
          child: Text('聊天面板', style: Theme.of(context).textTheme.button,),
        )
    );
  }
}

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('主页'),
      ),
        child: Center(
          child: Text('主页', style: Theme.of(context).textTheme.button,),
        )
    );
  }
}
