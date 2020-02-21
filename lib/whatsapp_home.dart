import 'package:flutter/material.dart';
import 'pages/camera_screen.dart';
import 'pages/chat_screen.dart';
import 'pages/status_screen.dart';
import 'pages/call_screen.dart';

class WhatsAppHome extends StatefulWidget {
  @override
  _WhatsAppHomeState createState() => _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this, initialIndex: 1);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('WhatsApp'),
          elevation: 0.7,
          bottom: TabBar(
              controller: _tabController,
              indicatorColor: Colors.white,
              tabs: <Widget>[
                Tab(icon: Icon(Icons.camera_alt)),
                Tab(text: 'CHAT'),
                Tab(text: 'STATUS'),
                Tab(text: 'CALLS'),
              ]),
        ),
        body: TabBarView(
          controller: _tabController,
          children: <Widget>[
            CameraScreen(),
            ChatScreen(),
            CallScreen(),
            StatusScreen()
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: null,
          child: Icon(Icons.message, color: Colors.white),
        ),
      ),
    );
  }
}
