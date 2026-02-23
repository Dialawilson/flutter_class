import 'package:flutter/material.dart';

class MyAsset extends StatelessWidget {
  const MyAsset({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: 200,
        height: 200,
        child: Image.asset('assets/img/bell.png'),
      ),
    );
  }
}