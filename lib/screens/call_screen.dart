import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Pages/SingleCallWidget.dart';

class CallScreen extends StatefulWidget {
  CallScreen({Key? key}) : super(key: key);

  @override
  State<CallScreen> createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: const [
            SingleCallWidget(
              callStatus: 'Outgoing',
              callType: 'Video',
              chatMessage: 'Bugün, 12:28',
              chatTitle: 'Park Jimin',
              imageUrl:
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT90sceOEw_DeDDcbG4ML4AGVnLED-qOYdjsQ&usqp=CAU',
            ),
            SingleCallWidget(
              callStatus: 'Incoming',
              callType: 'Video',
              chatMessage: 'Bugün, 15:11 ',
              chatTitle: 'V',
              imageUrl:
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNZZ44sys9WFftGaX6YBsjlebiLpCCK_5LTA&usqp=CAU',
            ),
            SingleCallWidget(
              callStatus: 'Incoming',
              callType: 'Audio',
              chatMessage: 'Bugün, 17:28',
              chatTitle: 'Eda',
              imageUrl:
                  'https://upload.wikimedia.org/wikipedia/en/8/80/Melisandre-Carice_van_Houten.jpg',
            ),
            SingleCallWidget(
              callStatus: 'Outgoing',
              callType: 'Audio',
              chatMessage: 'Bugün, 12:28 ',
              chatTitle: 'Mervenur',
              imageUrl:
                  'https://www.cicekbilgisi.com/wp-content/uploads/2020/08/2018Nature___Flowers_Purple_rose_flower_with_green_leaves_124647_-e1598874547178.jpg',
            ),
          ],
        ),
      ),
    );
  }
}
