// ignore_for_file: prefer_typing_uninitialized_variables, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/home.dart';
import 'package:camera/camera.dart';
import 'dart:async';
import 'package:whatsapp_clone/screens/camera_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  cameras = await availableCameras();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Whatsapp Clone',
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      home: Home(
        cameras: [],
      ),
    );
  }
}
