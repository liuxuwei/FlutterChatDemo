import 'package:flutter/material.dart';
import 'package:flutter_chat_app/chat/message_page.dart';
import 'package:flutter_chat_app/contacts/contacts.dart';
import 'package:flutter_chat_app/personal/personal.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  var _currentIndex = 0; //当前选中页面索引

  MessagePage message;

  Contacts contacts;

  Personal personal;

  currentPage() {
    switch (_currentIndex) {
      case 0:
        if (message == null) {
          message = MessagePage();
        }
        return message;
      case 1:
        if (contacts == null) {
          contacts = Contacts();
        }
        return contacts;
      case 2:
        if (personal == null) {
          personal = Personal();
        }
        return personal;
    }
  }

  _popupMenuItem(String title, {String imagePath, IconData icon}) {
    return PopupMenuItem(
        child: Row(
      children: <Widget>[
        imagePath != null
            ? Image.asset(
                imagePath,
                width: 32.0,
                height: 32.0,
              )
            : SizedBox(
                width: 32.0,
                height: 32.0,
                child: Icon(
                  icon,
                  color: Colors.white,
                ),
              ),
        Container(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text(
            title,
            style: TextStyle(color: Colors.white),
          ),
        )
      ],
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('即时通讯'),
        actions: <Widget>[
          GestureDetector(
            onTap: () {
              //跳转至搜索页面
              Navigator.pushNamed(context, 'search');
            },
            child: Icon(Icons.search),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0, right: 20.0),
            child: GestureDetector(
              onTap: () {
                //弹出菜单
                showMenu(
                    position: RelativeRect.fromLTRB(500.0, 76.0, 10.0, 0.0),
                    context: context,
                    items: <PopupMenuEntry>[
                      _popupMenuItem('发起会话', icon: Icons.chat),
                      _popupMenuItem('添加好友', icon: Icons.person),
                      _popupMenuItem('联系客服', icon: Icons.room_service),
                    ]);
              },
              child: Icon(Icons.add),
            ),
          )
        ],
      ),
      //底部导航按钮
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          onTap: ((index) {
            setState(() {
              _currentIndex = index;
            });
          }),
          items: [
            BottomNavigationBarItem(
                title: Text(
                  '聊天',
                  style: TextStyle(
                      color: _currentIndex == 0
                          ? Color(0xFF46c01b)
                          : Color(0xff999999)),
                ),
                icon: Icon(Icons.chat_bubble)),
            BottomNavigationBarItem(
                title: Text(
                  '好友',
                  style: TextStyle(
                      color: _currentIndex == 1
                          ? Color(0xFF46c01b)
                          : Color(0xff999999)),
                ),
                icon: Icon(Icons.person)),
            BottomNavigationBarItem(
                title: Text(
                  '我的',
                  style: TextStyle(
                      color: _currentIndex == 2
                          ? Color(0xFF46c01b)
                          : Color(0xff999999)),
                ),
                icon: Icon(Icons.near_me)),
          ]),
      body: currentPage(),
    );
  }
}
