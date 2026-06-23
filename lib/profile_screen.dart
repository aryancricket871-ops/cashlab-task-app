import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0D0714),
      appBar: AppBar(title: const Text('Profile'), backgroundColor: Colors.transparent),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const CircleAvatar(radius: 50, backgroundColor: Colors.purpleAccent, child: Icon(Icons.person, size: 50, color: Colors.white)),
            const SizedBox(height: 15),
            const Text('Aryan User', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white)),
            const Text('aryan420@email.com', style: TextStyle(color: Colors.grey)),
            const SizedBox(height: 30),
            _buildProfileTile(Icons.history, 'Earnings History'),
            _buildProfileTile(Icons.help_outline, 'Help & Support'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(backgroundColor: Colors.redAccent),
              child: const Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileTile(IconData icon, String title) {
    return Card(
      color: const Color(0xFF1A1226),
      child: ListTile(
        leading: Icon(icon, color: Colors.purpleAccent),
        title: Text(title, style: const TextStyle(color: Colors.white)),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.white),
      ),
    );
  }
}

