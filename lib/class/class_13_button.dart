import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return  Placeholder(
      
      child: Column(
        children: [
          // MATERIAL BUTTON
          MaterialButton(onPressed: (){}, child: Row(
            mainAxisSize:MainAxisSize.min ,
            children: [
            Text('press me'),
            const SizedBox(width: 10),
             Icon(Icons.arrow_forward_ios)],
             )
             ),
            //Elevated btn
            ElevatedButton(
              
              onPressed: (){}, child: Text('Elevated button')),
            FloatingActionButton(onPressed: (){}, child: Icon(Icons.phone),),
            IconButton(onPressed: (){}, icon: Icon(Icons.home), tooltip: 'more place',),
            OutlinedButton(onPressed: (){}, child: Text('outline btn')),
            TextButton(onPressed: (){}, child: Text('Text Btn')),





             
        ],
      ),
    );
  }

}