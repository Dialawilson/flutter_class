import 'package:flutter/material.dart';



class MyRadio extends StatelessWidget {
  @override
Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Difficulty Selection Example'),
        ),
        body: DifficultySelectionWidget(),
      ),
    );
  }
}

enum Difficulty {
  easy("Easy"),
  medium("Medium"),
  hard("Hard");

  // Members
  final String text;
  const Difficulty(this.text);
}

class DifficultySelectionWidget extends StatefulWidget {
  @override
  _DifficultySelectionWidgetState createState() => _DifficultySelectionWidgetState();
}

class _DifficultySelectionWidgetState extends State<DifficultySelectionWidget> {
  Difficulty? _selectedDifficulty = Difficulty.easy;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: Difficulty.values
          .map((option) => RadioListTile<Difficulty>(
                title: Text(option.text),
                value: option,
                groupValue: _selectedDifficulty,
                onChanged: (value) {
                  setState(() {
                    _selectedDifficulty = value!;
                  });
                },
              ))
          .toList(),
    );
  }
}
