import 'package:flutter/material.dart';
import 'package:flutter_class/navigation/class_21_nav2.dart';

class MyNavigation extends StatelessWidget {
  const MyNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text('page 1'),
          // using navigator in flutter
          ElevatedButton(onPressed: 
          (){

          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => MyNav2(),
          ));
          }, child: Text('Navigator') 
          ),

          //return back to the previous page
          ElevatedButton(onPressed: (){
          Navigator.pop(context, MaterialPageRoute(builder: (context)=> MyNav2()));
          }, child: Text('back  to home'))
        ],
      ),
    );
  }
}