import 'package:flutter/material.dart';
import 'package:flutter_chat_app/contacts/contact_header.dart';
import 'package:flutter_chat_app/contacts/contact_item.dart';
import 'package:flutter_chat_app/contacts/contact_sider_list.dart';
import 'package:flutter_chat_app/contacts/contact_vo.dart';

class Contacts extends StatefulWidget {
  @override
  _ContactsState createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ContactSiderList(
        items: contactData,
        //好友列表项
        itemBuilder: (context, index) {
          return Container(
            color: Colors.white,
            alignment: Alignment.centerLeft,
            child: ContactItem(item: contactData[index]),
          );
        },
        headerBuilder: (context, index) {
          return Container(
            child: ContactHeader(),
          );
        },
        //字母构造器
        sectionBuilder: (context, index) {
          return Container(
            height: 32.0,
            padding: const EdgeInsets.only(left: 14.0),
            color: Colors.grey[300],
            alignment: Alignment.centerLeft,
            child: Text(
              contactData[index].seationKey,
              style: TextStyle(fontSize: 14.0, color: Color(0xff909090)),
            ),
          );
        },
      ),
    );
  }
}
