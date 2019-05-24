import 'package:flutter/material.dart';
import 'package:flutter_chat_app/common/touch_callback.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  FocusNode focusNode = FocusNode();

  //请求获取焦点
  _requestNode() {
    FocusScope.of(context).requestFocus(focusNode);
    return focusNode;
  }

  //返回一个文本组件
  _getText(String text) {
    return TouchCallBack(
      isFeed: false,
      onPressed: () {
        print('你点击了  $text');
      },
      child: Text(
        text,
        style: TextStyle(fontSize: 14.0, color: Color(0xff1aad19)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Stack(
              children: <Widget>[
                //返回按钮
                TouchCallBack(
                  isFeed: false,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 45.0,
                    margin: const EdgeInsets.only(left: 12.0, right: 10.0),
                    child: Icon(
                      Icons.chevron_left,
                      color: Colors.black,
                    ),
                  ),
                ),

                //搜索框容器
                Container(
                  alignment: Alignment.centerLeft,
                  height: 45.0,
                  margin: const EdgeInsets.only(left: 50.0, right: 10.0),
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(width: 1.0, color: Colors.green))),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        //输入框
                        child: TextField(
                          focusNode: _requestNode(),
                          style: TextStyle(color: Colors.black, fontSize: 16.0),
                          onChanged: (String text) {},
                          decoration: InputDecoration(
                              hintText: '搜索', border: InputBorder.none),
                        ),
                      ),
                      //麦克风图标
                      Container(
                        margin: const EdgeInsets.only(right: 10.0),
                        child: Icon(
                          Icons.mic,
                          color: Color(0xffaaaaaa),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),

            //常用搜索
            Container(
              margin: const EdgeInsets.only(top: 50.0),
              child: Text(
                '常用搜索',
                style: TextStyle(fontSize: 16.0, color: Color(0xffb5b5b5)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Row(
                //对齐方式采用均匀对齐
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                //第一行搜索选项
                children: <Widget>[
                  _getText('朋友'),
                  _getText('聊天'),
                  _getText('群组'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 30.0),
              child: Row(
                //对齐方式采用均匀对齐
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                //第一行搜索选项
                children: <Widget>[
                  _getText('Flutter'),
                  _getText('Dart'),
                  _getText('Java'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSearchArea() {
    return Column(
      children: <Widget>[],
    );
  }
}
