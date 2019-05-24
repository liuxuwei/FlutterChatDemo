import 'package:flutter/material.dart';

class ContactVO {
  //字母排列值
  String seationKey;

  //名称
  String name;

//头像url
  String avatarUrl;

  ContactVO({@required this.seationKey, this.name, this.avatarUrl});


}

List<ContactVO> contactData = [
  ContactVO(
      seationKey: 'A',
    name: 'A 张三',
    avatarUrl: 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1558677026706&di=2986b4bd8798e88bc1ca8deb56395a98&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201710%2F15%2F20171015165024_5tQnW.thumb.700_0.jpeg'
  ),
  ContactVO(
      seationKey: 'A',
      name: 'A 张三',
      avatarUrl: 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1558677026706&di=2986b4bd8798e88bc1ca8deb56395a98&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201710%2F15%2F20171015165024_5tQnW.thumb.700_0.jpeg'
  ),
  ContactVO(
      seationKey: 'B',
      name: '波波',
      avatarUrl: 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1558677026706&di=2986b4bd8798e88bc1ca8deb56395a98&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201710%2F15%2F20171015165024_5tQnW.thumb.700_0.jpeg'
  ),
  ContactVO(
      seationKey: 'C',
      name: 'C 李四',
      avatarUrl: 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1558677026706&di=2986b4bd8798e88bc1ca8deb56395a98&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201710%2F15%2F20171015165024_5tQnW.thumb.700_0.jpeg'
  ),
];


