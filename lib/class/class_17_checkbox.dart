import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder(
      child: Column(
        children: [
          Checkbox(value: true, onChanged: null),
          CheckboxListTile(value: false, onChanged: null, title: Text('checkbox list tile'), subtitle: Text('subtitle'), secondary: Icon(Icons.home), controlAffinity: ListTileControlAffinity.trailing, activeColor: Colors.red, checkColor: Colors.white, ),
        ],
      ),
    );
  }
}