import 'package:flutter/material.dart';
import 'package:flutter_class/class/class_1_widgets.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override

  void initState(){
    super.initState();
    _navigatehome();
  }
  _navigatehome() async{
    await Future.delayed(const Duration(milliseconds: 3000));
    if(!mounted) return;
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MyWidget()),);
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}