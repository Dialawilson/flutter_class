import 'package:flutter/material.dart';
import 'package:flutter_class/class/class_7_json_online/mainQuote.dart';

void main(){
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First App'),
        ),
        body: MyMainQuote()
      ),
    )
  );
}

// Text => IT USED TO DISPLAY TEXT ON SCREEN
// CONTAINER => IT IS USED TO DISPLAY A RECTANGULAR BOX ON THE SCREEN
// Row => USED TO DISPLAY WIDGETS IN A HORIZONTAL MANNER
// Column => USED TO DISPLAY WIDGETS IN A VERTICAL
// Stack => USED TO DISPLAY WIDGET ON TOP EACH OTHER.