import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/store_page_view.dart';

class StatusScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xfff2f2f2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Card(
            color: Colors.white,
            elevation: 0.0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: Stack(
                  children: <Widget>[
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                          "https://static.birgun.net/resim/haber-detay-resim/2020/01/02/3-uncu-kopru-gidis-gelis-44-lira-669505-5.jpg"),
                    ),
                    Positioned(
                      bottom: 0.0,
                      right: 1.0,
                      child: Container(
                        height: 20,
                        width: 20,
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 15,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.green,
                          shape: BoxShape.circle,
                        ),
                      ),
                    )
                  ],
                ),
                title: Text(
                  "Durumum",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text("Durum güncellemesi eklemek için dokunun"),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Görüntülenen güncellemeler",
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(8.0),
              color: Colors.white,
              child: ListView(
                children: <Widget>[
                  ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT90sceOEw_DeDDcbG4ML4AGVnLED-qOYdjsQ&usqp=CAU"),
                    ),
                    title: Text(
                      "jimin",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text("Bugün, 16:26 "),
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => StoryPageView())),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNZZ44sys9WFftGaX6YBsjlebiLpCCK_5LTA&usqp=CAU"),
                    ),
                    title: Text(
                      "V",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text("Bugün, 16:30 "),
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => StoryPageView())),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUTByaTqilij_UFe0ydgFSssYmLOQGfPmwCg&usqp=CAU"),
                    ),
                    title: Text(
                      "Jungkook",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text("Bugün, 16:32 "),
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => StoryPageView())),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
