import 'package:flutter/material.dart';

class MyGrid extends StatelessWidget {
  const MyGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Gym Gallery")),
      body: GridView.count(
        crossAxisCount: 2, // Number of columns
        crossAxisSpacing: 10, // Space between columns
        mainAxisSpacing: 10, // Space between rows
        padding: const EdgeInsets.all(50),
        children: [
          _buildGridItem("Bench Press", Icons.fitness_center),
          _buildGridItem("Squats", Icons.accessibility_new),
          _buildGridItem("Deadlift", Icons.speed),
          _buildGridItem("Cardio", Icons.directions_run),
        ],
      ),
    );
  }

  Widget _buildGridItem(String title, IconData icon) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blueAccent,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 40, color: Colors.white),
          const SizedBox(height: 5),
          Text(title, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}