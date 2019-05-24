
import 'package:flutter/material.dart';
import 'package:flutter_chat_app/common/im_item.dart';
import 'package:flutter_chat_app/common/touch_callback.dart';

class Personal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 20.0),
            color: Colors.white,
            height: 80.0,
            child: TouchCallBack(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  //添加头像
                  Container(
                    margin: const EdgeInsets.only(left: 12.0, right: 15.0),
                    child: Image.asset(
                      'images/xiaoxin.jpg',
                      width: 70.0,
                      height: 70.0,
                    ),
                  ),
                  //用户名及账号显示
                  Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            '小新',
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Color(0xff353535)
                            ),
                          ),
                          Text(
                            '账号 xiaoxin',
                            style: TextStyle(
                                fontSize: 14.0,
                                color: Color(0xffa9a9a9)
                            ),
                          )
                        ],
                      )
                  ),
                  //二维码图片展示
                  Container(
                    margin: const EdgeInsets.only(left: 12.0, right: 15.0),
                    child: Image.asset(
                      'images/code.png',
                      width: 24.0,
                      height: 24.0,
                    ),
                  )
                ],
              ),
              onPressed: (){},
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20.0),
            color: Colors.white,
            child: ImItem(
              title: '好友动态',
              icon: Icon(Icons.live_tv),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20.0),
            color: Colors.white,
            child: Column(
              children: <Widget>[
                ImItem(
                  title: '消息管理',
                  icon: Icon(Icons.message),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Divider(
                    height: 0.5,
                    color: Color(0xffd9d9d9),
                  ),
                ),
                ImItem(
                  title: '我的相册',
                  icon: Icon(Icons.photo),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Divider(
                    height: 0.5,
                    color: Color(0xffd9d9d9),
                  ),
                ),
                ImItem(
                  title: '我的文件',
                  icon: Icon(Icons.insert_drive_file),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Divider(
                    height: 0.5,
                    color: Color(0xffd9d9d9),
                  ),
                ),
                ImItem(
                  title: '联系客服',
                  icon: Icon(Icons.help),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Divider(
                    height: 0.5,
                    color: Color(0xffd9d9d9),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20.0),
            color: Colors.white,
            child: ImItem(title: '清理缓存', icon: Icon(Icons.delete),),
          )
        ],
      ),
    );
  }
}
