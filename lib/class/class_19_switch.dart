import 'package:flutter/material.dart';


class MySwitch extends StatelessWidget {
  const MySwitch({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Switch List Example'),
        ),
        body: SettingsScreen(),
      ),
    );
  }
}

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  var settings = <String, bool>{
    'Wi-Fi': true,
    'Bluetooth': false,
    'Airplane Mode': false,
    'Mobile Data': true,
  };

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: settings.keys.map((String key) {
        return SwitchListTile(
          title: Text(key),
          value: settings[key]!,
          onChanged: (bool value) {
            setState(() {
              settings[key] = value;
            });
          },
        );
      }).toList(),
    );
  }
}
