import 'package:flutter/material.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0D0714),
      appBar: AppBar(title: const Text('Tasks'), backgroundColor: Colors.transparent),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // डेली टास्क वाला कार्ड
          _buildTaskItem('Watch Videos', '+ ₹10', Icons.play_circle_fill),
          _buildTaskItem('Coin Master', '+ ₹60', Icons.videogame_asset),
          _buildTaskItem('Ludo King', '+ ₹40', Icons.sports_esports),
          _buildTaskItem('PollFish Survey', '+ ₹25', Icons.assignment),
        ],
      ),
    );
  }

  Widget _buildTaskItem(String title, String reward, IconData icon) {
    return Card(
      color: const Color(0xFF1A1226),
      margin: const EdgeInsets.only(bottom: 15),
      child: ListTile(
        leading: Icon(icon, color: Colors.purpleAccent, size: 30),
        title: Text(title, style: const TextStyle(color: Colors.white)),
        trailing: Text(reward, style: const TextStyle(color: Colors.greenAccent, fontWeight: FontWeight.bold)),
      ),
    );
  }
}

