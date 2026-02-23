import 'package:flutter/material.dart';

class ListWidget extends StatelessWidget {
  const ListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( // Added Scaffold for the white background/Material structure
      body: ListView(
        children: const <Widget> [ 
          ListTile(
            title: Text("Goto Gym"),
            subtitle: Text("go to gym at 6:00"),
          ),
          ListTile(
            title: Text("Goto Gym"),
            subtitle: Text("go to gym at 6:00"),
          ),
          ListTile(
            title: Text("Goto Gym"),
            subtitle: Text("go to gym at 6:00"),
          ),
        ],
      ),
    );
  }
}