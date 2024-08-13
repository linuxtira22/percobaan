import 'package:flutter/material.dart';
import 'package:latihan_2/36_HTTP_Request_post/home_page.dart';
import 'package:latihan_2/dahboard/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: homePage(),
    );
  }
}