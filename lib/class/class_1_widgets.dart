// Stateless Widget
// Stateless widgets are immutable. Once you define their properties, they remain constant and don’t change. They are the go-to choice for displaying static content like text, images, or icons.
import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}


// Stateful Widget
// Stateful widgets are dynamic and can change during their lifecycle, usually in response to user interactions or real-time data updates. They are essential for content that evolves over time, such as a shopping cart’s contents.
class MyWidget2 extends StatefulWidget {
  const MyWidget2({super.key});

  @override
  State<MyWidget2> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget2> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}