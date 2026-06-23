import 'package:flutter/material.dart';
import 'home_screen.dart'; // यह लाइन होम स्क्रीन को जोड़ने के लिए बहुत जरूरी है

class LoginScreen extends StatelessWidget {
  final TextEditingController _userController = TextEditingController();
  final TextEditingController _passController = TextEditingController();
  final TextEditingController _confirmPassController = TextEditingController();

  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0D0714), // डार्क थीम के लिए
      appBar: AppBar(title: const Text('CashLab - Join Now'), backgroundColor: Colors.transparent),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Create Account', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.purpleAccent)),
            const SizedBox(height: 20),
            TextField(controller: _userController, style: const TextStyle(color: Colors.white), decoration: const InputDecoration(labelText: 'Username', labelStyle: TextStyle(color: Colors.grey), border: OutlineInputBorder())),
            const SizedBox(height: 10),
            TextField(controller: _passController, style: const TextStyle(color: Colors.white), decoration: const InputDecoration(labelText: 'Password', labelStyle: TextStyle(color: Colors.grey), border: OutlineInputBorder()), obscureText: true),
            const SizedBox(height: 10),
            TextField(controller: _confirmPassController, style: const TextStyle(color: Colors.white), decoration: const InputDecoration(labelText: 'Confirm Password', labelStyle: TextStyle(color: Colors.grey), border: OutlineInputBorder()), obscureText: true),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.purpleAccent),
              onPressed: () {
                if (_userController.text.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Please enter username!')));
                } else if (_passController.text == _confirmPassController.text && _passController.text.isNotEmpty) {
                  // रजिस्ट्रेशन सक्सेसफुल के बाद नेविगेशन
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const HomeScreen()),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Passwords do not match!')));
                }
              },
              child: const Text('Register & Login', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
