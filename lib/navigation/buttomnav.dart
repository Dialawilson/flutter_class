import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget{
  const BottomNav({super.key});
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ) 
      ,
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.blue,
        items:  [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assistant_navigation),
            label: 'Search',
          ),
          BottomNavigationBarItem(icon:   Container(
            padding: EdgeInsets.all(10),
            color: Colors.white,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              ),
            child: Icon(Icons.add, color: Colors.blue)), label: 'add'),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );  
}
}