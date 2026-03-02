import 'package:flutter/material.dart';

class MyForm extends StatelessWidget {
  const MyForm({super.key});

  @override
  Widget build(BuildContext context) {
    return  Placeholder(
      child: Column(
        children: [
          Form(child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Username',
                  border: OutlineInputBorder(),

                  
                ),
                validator: (value) => value!.isEmpty ? 'Please enter your username' : null,
              ),
              SizedBox(height: 16),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
                validator: (value) => value!.isEmpty ? 'Please enter your password' : null,
                obscureText: true,
              ),
              SizedBox(height: 16),
              ElevatedButton(onPressed: (){}, child: Text('Submit')),

              // text field with controller
              TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              // text field with prefix and suffix
              TextField(
                decoration: InputDecoration(
                  labelText: 'Phone',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.phone),
                  suffixIcon: Icon(Icons.check),
                ),
                keyboardType: TextInputType.phone,
              ),
               TextField(
                decoration: InputDecoration(
                  labelText: 'Search',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.search),
                ),
              ),
            ],
          ))
        ],
      ),
    );
  }
}