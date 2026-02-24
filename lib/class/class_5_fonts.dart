import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class MyFont extends StatelessWidget {
  const MyFont({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text("hello wilson", 
            style: GoogleFonts.robotoFlex(fontSize: 29,
            fontWeight: FontWeight.w600,
            color: Colors.brown),)
          ],
        ),
      ),
    );
  }
}