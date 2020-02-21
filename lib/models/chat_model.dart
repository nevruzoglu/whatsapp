import 'package:flutter/foundation.dart';

class ChatModel {
  final String name;
  final String message;
  final String time;
  final String avatar;

  ChatModel(
      {@required this.name,
      @required this.message,
      @required this.time,
      @required this.avatar});
}

List<ChatModel> chatData = [
  ChatModel(
      name: 'Tomothy Nguyen',
      message: 'Lovely, lets meet at Kingston!',
      time: '8:19 AM',
      avatar: 'lib/assets/avatars/Avatar1.jpg'),
  ChatModel(
      name: 'Scarlett Watson',
      message: 'Flutter is awsome, need to learn more',
      time: '3:08 PM',
      avatar: 'lib/assets/avatars/Avatar2.jpg'),
  ChatModel(
      name: 'Brandon Edwards',
      message: 'Hahahahaha great answer',
      time: '4:48 AM',
      avatar: 'lib/assets/avatars/Avatar3.jpg'),
  ChatModel(
      name: 'Jerome Mccoy',
      message: 'Sure, i can handle that',
      time: '4:07 PM',
      avatar: 'lib/assets/avatars/Avatar4.jpg'),
  ChatModel(
      name: 'Jerome Mccoy',
      message: 'Just watched the movie you told',
      time: '4:19 PM',
      avatar: 'lib/assets/avatars/Avatar5.jpg'),
];
