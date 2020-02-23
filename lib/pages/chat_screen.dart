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
      itemBuilder: (context, i) => Column(children: <Widget>[
        Divider(height: 10),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(chatData[i].avatar),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(chatData[i].name,
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Text(chatData[i].time,
                  style: TextStyle(fontSize: 14, color: Colors.grey))
            ],
          ),
          subtitle: Container(
              padding: EdgeInsets.only(top: 5),
              child: Text(chatData[i].message,
                  style: TextStyle(fontSize: 15, color: Colors.grey))),
        )
      ]),
    );
  }
}
