import 'package:flutter/material.dart';
import 'package:flutter_chat_app/contacts/contact_vo.dart';

class ContactItem extends StatelessWidget {
  final ContactVO item;
  final String titleName;
  final String imageName;

  ContactItem({this.item, this.titleName, this.imageName});

  @override
  Widget build(BuildContext context) {
    print('联系人: ${item.toString()}');

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border:
            Border(bottom: BorderSide(width: 0.5, color: Color(0xFFd9d9d9))),
      ),
      height: 52.0,
      child: FlatButton(
          onPressed: () {},
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              imageName == null
                  ? Image.network(
                      (item.avatarUrl != ''
                          ? item.avatarUrl
                          : 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1558677026706&di=2986b4bd8798e88bc1ca8deb56395a98&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201710%2F15%2F20171015165024_5tQnW.thumb.700_0.jpeg'),
                      width: 36.0,
                      height: 36.0,
                      scale: 0.9,
                    )
                  : Image.asset(
                      imageName,
                      width: 36.0,
                      height: 36.0,
                    ),
              //展示名称或标题
              Container(
                margin: const EdgeInsets.only(left: 12.0),
                child: Text(
                  titleName == null ? item.name ?? '暂时' : titleName,
                  style: TextStyle(fontSize: 18.0, color: Color(0xFF353535)),
                  maxLines: 1,
                ),
              )
            ],
          )),
    );
  }
}
