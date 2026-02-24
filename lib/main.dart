import 'package:flutter/material.dart';
import 'package:flutter_class/class/class%206/main.dart';
import 'package:flutter_class/class/class_2_list.dart';
import 'package:flutter_class/class/class_3_grid_widget.dart';
import 'package:flutter_class/class/class_4_asset.dart';
import 'package:flutter_class/class/class_5_fonts.dart';
import 'package:flutter_class/stateful_widget.dart'; //material package from flutter

void main(){
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First App'),
        ),
        body: MyApp()
      ),
    )
  );
}

// Text => IT USED TO DISPLAY TEXT ON SCREEN
// CONTAINER => IT IS USED TO DISPLAY A RECTANGULAR BOX ON THE SCREEN
// Row => USED TO DISPLAY WIDGETS IN A HORIZONTAL MANNER
// Column => USED TO DISPLAY WIDGETS IN A VERTICAL
// Stack => USED TO DISPLAY WIDGET ON TOP EACH OTHER.