import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Drawer(
          child: ListView(
            children: const [
              DrawerHeader(child: Text('Drawer header')),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('home'),
              ),
               ListTile(
                leading: Icon(Icons.info),
                title: Text('About'),
              ),
               ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
              ),
               ListTile(
                leading: Icon(Icons.all_inclusive),
                title: Text('flex'),
              )
            ],
          ),
        )
      ],
    );
  }
}