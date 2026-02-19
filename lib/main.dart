import 'package:flutter/material.dart'; //material package from flutter

void main(){
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First App'),
        ),
        body: const Center(
          child: Text('Hello biggie wizz'),
        ),
      ),
    )
  );
}