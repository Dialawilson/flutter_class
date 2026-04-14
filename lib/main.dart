import 'package:flutter/material.dart';
// import 'package:flutter_class/class/api/Api_fetch.dart';
import 'package:flutter_class/class/api/Api_post.dart';
// import 'package:flutter_class/class/class_7_json_online/mainQuote.dart';
// import 'package:flutter_class/navigation/buttomnav.dart';

void main() => runApp(const MyApp());


class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First App'),
        ),
        body: ApiPost(),
        // bottomNavigationBar: BottomNav(),
      ),
    );
  }
}