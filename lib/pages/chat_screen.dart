import 'package:flutter/material.dart';
import 'package:whatsapp/models/chat_model.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: chatData.length,
      itemBuilder: (context, index) => Column(children: <Widget>[
        Divider(height: 10),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(chatData[index].avatar),
          ),
          title: Row(),
        )
      ]),
    );
  }
}
