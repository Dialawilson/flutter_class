import 'package:flutter/material.dart';

class MyAlert extends StatelessWidget {
  const MyAlert({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20,),
            ElevatedButton(onPressed: ()=>showMyAlert(context, 'Are you sure you want to log out?', 'log out from this application'), child: const Text('log out'))
          ],
        ),
      ),
    );
  }
}
void showMyAlert(BuildContext context, String title, String content){
  showDialog(context: context, builder: (BuildContext context){
    return AlertDialog(
      title: Text(title),
      content: Text(content),
      actions: [
        TextButton(onPressed: (){
          Navigator.of(context).pop();
        }, child: const Text('cancel')),
        TextButton(onPressed: (){
          Navigator.of(context).pop();
        }, child: const Text('ok'))
      ],
    );
  });
}