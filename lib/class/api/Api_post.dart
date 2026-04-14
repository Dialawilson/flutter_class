import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';



class ApiPost extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CreatePostExample(),
    );
  }
}

class CreatePostExample extends StatefulWidget {
  @override
  _CreatePostExampleState createState() => _CreatePostExampleState();
}

class _CreatePostExampleState extends State<CreatePostExample> {
  // 1. Define the controllers to capture user input
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _bodyController = TextEditingController();

  Future<void> createPost(String title, String body) async {
    // Basic validation to ensure fields aren't empty
    if (title.isEmpty || body.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Please fill in all fields")),
      );
      return;
    }

    final response = await http.post(
      Uri.parse('https://jsonplaceholder.typicode.com/posts'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'title': title,
        'body': body,
        'userId': '100',
      }),
    );

    if (response.statusCode == 201) {
      final responseBody = jsonDecode(response.body);
      
      // Clear the inputs after success
      _titleController.clear();
      _bodyController.clear();

      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text("Post Created Successfully"),
            content: Text("Title: ${responseBody['title']}\nID: ${responseBody['id']}"),
            actions: [
              TextButton(
                child: const Text("OK"),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ],
          );
        },
      );
    } else {
      throw Exception('Failed to create post');
    }
  }

  @override
  void dispose() {
    // Clean up controllers when the widget is disposed
    _titleController.dispose();
    _bodyController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Post Data Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // 2. Title Input Field
            TextField(
              controller: _titleController,
              decoration: const InputDecoration(
                labelText: 'Post Title',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            
            // 3. Body Input Field
            TextField(
              controller: _bodyController,
              maxLines: 3,
              decoration: const InputDecoration(
                labelText: 'Post Body',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),

            // 4. Submit Button
            ElevatedButton(
              style: ElevatedButton.styleFrom(minimumSize: const Size.fromHeight(50)),
              onPressed: () {
                // Pass the controller text to the function
                createPost(_titleController.text, _bodyController.text);
              },
              child: const Text('Submit Post'),
            ),
          ],
        ),
      ),
    );
  }
}