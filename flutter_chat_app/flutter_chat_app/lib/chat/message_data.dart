enum MessageType { SYSTEM, PUBLIC, CHAT, GROUP }

class MessageData {
  //头像
  String avatar;

  //主标题
  String title;

  //子标题
  String subTitle;

  //消息时间
  DateTime time;

  //消息类型
  MessageType type;

  MessageData(this.avatar, this.title, this.subTitle, this.time, this.type);
}

List<MessageData> messageData = [
  MessageData(
      'https://img2.woyaogexing.com/2018/12/23/e1823e51d15344c681fd736b9ee3728f!400x400.jpeg',
      '小新',
      '大象大象',
      DateTime.now(),
      MessageType.CHAT
  ),
  MessageData(
      'https://img2.woyaogexing.com/2018/12/22/150f76d964154f83a492e9aee2dc1e01!400x400.jpeg',
      '小新',
      '你的鼻子为什么那么长',
      DateTime.now(),
      MessageType.CHAT
  ),
  MessageData(
      'https://img2.woyaogexing.com/2018/12/22/f080f9c6ac884075ab7e0ddeff56b192!400x400.jpeg',
      '小新',
      '动感超人',
      DateTime.now(),
      MessageType.CHAT
  ),
  MessageData(
      'https://img2.woyaogexing.com/2018/12/22/aabc2fc9fe7845bfb1b0595df9d79969!400x400.jpeg',
      '小新',
      '啊哈哈哈哈哈哈',
      DateTime.now(),
      MessageType.CHAT
  ),
  MessageData(
      'https://img2.woyaogexing.com/2018/12/22/77a1ee57043d4a4a83bb881fcb7fe283!400x400.jpeg',
      '小新',
      '麻麻，你肥来了',
      DateTime.now(),
      MessageType.CHAT
  ),
];
