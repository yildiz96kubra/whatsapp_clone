import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Pages/messageExchange.dart';
import 'package:whatsapp_clone/models/chat.dart';

class ChatScreen extends StatefulWidget {
  ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: fakeData.length,
      itemBuilder: (BuildContext context, i) => Column(
        children: [
          Divider(
            height: 10.0,
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(fakeData[i].avatarUrl),
            ),
            title: Row(
              children: [
                Text(
                  fakeData[i].name,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  fakeData[i].time,
                  style: TextStyle(fontSize: 14.0, color: Colors.grey),
                ),
              ],
            ),
            subtitle: Container(
              padding: EdgeInsets.only(top: 5.0),
              child: Text(
                fakeData[i].message,
                style: TextStyle(color: Colors.grey, fontSize: 15.0),
              ),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MessageExchange()));
            },
          ),
        ],
      ),
    );
  }
}
