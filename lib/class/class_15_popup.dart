import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int _selectedMenu = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Popup Menu Example'),
        ),
        body: Center(
          child: PopupMenuButton<int>(
            onSelected: (int result) {
              setState(() {
                _selectedMenu = result;
              });
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<int>>[
              const PopupMenuItem<int>(
                value: 1,
                child: Text('About'),
              ),
              const PopupMenuItem<int>(
                value: 2,
                child: Text('Contact'),
              ),
              const PopupMenuItem<int>(
                value: 3,
                child: Text('Settings'),
              ),
            ],
          ),
        ),
      ),
    );

  }
}