import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Widget addressContainer = Container(
        padding: const EdgeInsets.all(32.0),
        child: Row(
          children: <Widget>[
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    '蜡笔小新任务介绍',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  '蜡笔小新内容',
                  style: TextStyle(color: Colors.grey[500]),
                )
              ],
            )),
            Icon(
              Icons.star,
              color: Colors.red[500],
            ),
            Text('66')
          ],
        ));

    Widget buttonsContainer = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,   //水平方向均匀排列每个元素
        children: <Widget>[
          buildButtonColumn(Icons.child_care, "小葵"),
          buildButtonColumn(Icons.pets, "小白"),
          buildButtonColumn(Icons.face, "小新"),
        ],
      ),
    );

    Widget textContainer = Container(
      padding: const EdgeInsets.all(32.0),
      child: Text(
        '''
        1、野原新之助

野原新之助（野原 しんのすけ，2002年《蜡笔小新》推出的剧场版中，他的名字汉字写法为“野原信之介”），一般称作小新、新之助。是漫画家臼井仪人的作品《蜡笔小新》中的主人公。

性格热情、口无遮拦、早熟、不太积极、容易吃醋、无厘头、腹黑、无情笑面虎、难进入状况，且行事风格总是超乎逻辑，与父母住在一起。

2、野原美伢

野原美伢（野原 みさえ）是蜡笔小新的角色，29岁，全职家庭主妇，原名小山美伢。

21岁与老公野原广志相识，24岁产下长子野原新之助，29岁产下次女野原向日葵。

前期漫画和动画被设计成性急暴力，有些爱慕虚荣，是以“暴力教育”为纲的妈妈，后期经过操刀，动画中的“暴力教育”的内容已被大幅度弱化，虽然依然称不上温柔，但人情味已经得到很大程度的加强——无论前期还是后期动画，美伢都是对孩子和丈夫一心一意的好家庭主妇。

3、野原广志

野原广志（日语：野原 ひろし）是日本著名动漫《蜡笔小新》的第二男主角，是主人公野原新之助的父亲，35岁，高中毕业后来到东京，于20岁时（推测为大学退学，也很有可能是短期大学毕业）于双叶商社就职，双叶商社营业部课长，是一个地道的上班族。

出生于日本秋田县大曲市，现居于日本埼玉县春日部市，并在东京的双叶商事第一营业部营业二课担任系长。而且一直没有加薪，让美伢天天说他太悲惨了。
        '''
      ),
    );

    return Scaffold(
        appBar: AppBar(
          title: Text('蜡笔小新'),
          centerTitle: true,
        ),
        body: ListView(
          physics: ScrollPhysics(),
          children: <Widget>[
            Image.asset(
              'images/2.jpg',
              width: 600.0,
              height: 240.0,
              fit: BoxFit.cover,
            ),
            addressContainer,
            buttonsContainer,
            textContainer
          ],
        ));
  }

  Column buildButtonColumn(IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(icon, color: Colors.lightGreen[600],),
        Container(
          margin: const EdgeInsets.only(top: 8.0),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.w400,
              color: Colors.lightGreen[600]
            ),
          ),
        )
      ],
    );

  }
}
