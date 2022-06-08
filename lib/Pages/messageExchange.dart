import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:whatsapp_clone/Pages/messageExchange.dart';

class MessageExchange extends StatelessWidget {
  const MessageExchange({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: -5,
        title: Row(
          children: const <Widget>[
            CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://static.birgun.net/resim/haber-detay-resim/2020/01/02/3-uncu-kopru-gidis-gelis-44-lira-669505-5.jpg"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text("Kübra yıldız"),
            ),
          ],
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: InkWell(
              child: Icon(Icons.phone),
              onTap: () {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: InkWell(
              child: Icon(Icons.camera_alt),
              onTap: () {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: InkWell(
              child: Icon(Icons.more_vert),
              onTap: () {},
            ),
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    "https://static.birgun.net/resim/haber-detay-resim/2020/01/02/3-uncu-kopru-gidis-gelis-44-lira-669505-5.jpg"))),
        child: Column(children: [
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Align(
                      alignment: index % 2 == 0
                          ? Alignment.centerLeft
                          : Alignment.centerRight,
                      child: Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Theme.of(context).primaryColor,
                              borderRadius: BorderRadius.horizontal(
                                  left: Radius.circular(8),
                                  right: Radius.circular(8))),
                          child: Text(
                            "Deneme Mesajı",
                            style: TextStyle(color: Colors.black),
                          ))),
                );
              },
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.horizontal(
                          left: Radius.circular(9),
                          right: Radius.circular(12))),
                  child: Row(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        child: Icon(
                          Icons.tag_faces,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Mesaj", border: InputBorder.none),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        child: Icon(
                          Icons.attach_file,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        child: Icon(
                          Icons.camera_alt,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ]),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 5),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Theme.of(context).primaryColor),
                child: IconButton(
                    icon: Icon(Icons.send),
                    onPressed: () {}),
              ),
            ],
          )
        ]),
      ),
    );
  }
}

class _ref {
}

mixin _textController {}
