import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/main.dart';
import 'package:whatsapp_clone/models/CallTab.dart';
import 'package:whatsapp_clone/screens/call_screen.dart';
import 'package:whatsapp_clone/screens/camera_screen.dart';
import 'package:whatsapp_clone/screens/chat_screen.dart';
import 'package:whatsapp_clone/screens/status_screen.dart';
import 'main.dart';

class Home extends StatefulWidget {
  final List<CameraDescription> cameras;
  const Home({required this.cameras});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  bool showFab = true;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, initialIndex: 1, length: 4);
    _tabController.addListener(() {
      if (_tabController.index == 1) {
        showFab = true;
      } else {
        showFab = false;
      }
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Whatsapp"),
        actions: [
          PopupMenuButton<String>(onSelected: (value) {
            print(value);
          }, itemBuilder: (BuildContext context) {
            return [
              PopupMenuItem(
                child: Text("Yeni Grup"),
                value: "Yeni Grup",
              ),
              PopupMenuItem(
                child: Text("Yeni Yayın"),
                value: "Yeni Yayın",
              ),
              PopupMenuItem(
                child: Text("Whatsapp Web"),
                value: "Whatsapp Web",
              ),
              PopupMenuItem(
                child: Text("Yıldızlı mesajlar"),
                value: "Yıldızlı mesajlar",
              ),
              PopupMenuItem(
                child: Text("Ayarlar"),
                value: "Ayarlar",
              ),
            ];
          }),
        ],
      ),
      body: Column(
        children: [
          Container(
            color: Theme.of(context).primaryColor,
            child: TabBar(
              controller: _tabController,
              indicatorColor: Colors.white,
              tabs: [
                Tab(
                  icon: Icon(Icons.camera_alt),
                ),
                Tab(text: "Sohbetler"),
                Tab(text: "Durum"),
                Tab(text: "Aramalar"),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: <Widget>[
                CameraScreen(),
                ChatScreen(),
                StatusScreen(),
                CallScreen(),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: showFab
          ? FloatingActionButton(
              backgroundColor: Theme.of(context).cardColor,
              child: Icon(
                Icons.message,
                color: Colors.white,
              ),
              onPressed: () => print("open chats"),
            )
          : null,
    );
  }
}
