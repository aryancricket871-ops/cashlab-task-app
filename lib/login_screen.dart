import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController _userController = TextEditingController();
  final TextEditingController _passController = TextEditingController();
  final TextEditingController _confirmPassController = TextEditingController();

  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('CashLab - Join Now')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Create Account', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.purpleAccent)),
            const SizedBox(height: 20),
            TextField(controller: _userController, decoration: const InputDecoration(labelText: 'Username', border: OutlineInputBorder())),
            const SizedBox(height: 10),
            TextField(controller: _passController, decoration: const InputDecoration(labelText: 'Password', border: OutlineInputBorder()), obscureText: true),
            const SizedBox(height: 10),
            TextField(controller: _confirmPassController, decoration: const InputDecoration(labelText: 'Confirm Password', border: OutlineInputBorder()), obscureText: true),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (_userController.text.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Please enter username!')));
                } else if (_passController.text == _confirmPassController.text && _passController.text.isNotEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Registration Successful!')));
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Passwords do not match!')));
                }
              },
              child: const Text('Register & Login'),
            ),
          ],
        ),
      ),
    );
  }
}

