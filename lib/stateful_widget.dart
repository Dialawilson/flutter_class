import 'package:flutter/material.dart';

class Statefulcl extends StatefulWidget {
  const Statefulcl({super.key});
  @override
  _StatefulclState createState() =>_StatefulclState();

 
}

class _StatefulclState extends State<Statefulcl> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: 
    (){
      setState(() {
        counter++;
      });
    }, child: Text('you have pressed the button $counter times'));
  }
}