// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class InterestCalScreen extends StatefulWidget {
  const InterestCalScreen({super.key});

  @override
  _InterestCalScreen createState() => _InterestCalScreen();

}

class _InterestCalScreen extends State<InterestCalScreen>{
final TextEditingController amountController = TextEditingController();
final TextEditingController rateController = TextEditingController();
final TextEditingController timeController = TextEditingController();

String result = '';

@override
Widget build(BuildContext context){
  return Scaffold(
    appBar: AppBar(
      title:  const Text('simple interst calculator'),
    ),
    body: Container(
      child: Column(
        children: [
          _buildTextField(amountController, 'Amount'),
          _buildTextField(rateController, 'Rate of Interest'),
          _buildTextField(timeController, 'Time in years'),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(onPressed: _calInterest, child: Text('Calculate')),

          const SizedBox(
            height: 30,
          ),
          Text(
            result
          )

        ],
      ),
    ),
  );
}
void _calInterest(){
  double amount = double.tryParse(amountController.text) ?? 0.0;
  double rate = double.tryParse(rateController.text) ?? 0.0;
  double time = double.tryParse(timeController.text) ?? 0.0;

 double interest = amount * rate * time / 100;

 setState(() {
   result = 'Your interest is \$ ${interest.toStringAsFixed(3)}';
 });
}

Widget _buildTextField(TextEditingController controller, String label){
  return TextField(
    controller: controller,
    decoration: InputDecoration(
      labelText: label
    ),
    keyboardType: TextInputType.number,
  );
}
}