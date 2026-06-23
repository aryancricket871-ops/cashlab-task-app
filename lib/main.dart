import 'package:flutter/material.dart';

void main() => runApp(const CashLabApp());

class CashLabApp extends StatelessWidget {
  const CashLabApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CashLab',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF0D0714),
        primaryColor: Colors.deepPurpleAccent,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('CashLab Official')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'CashLab App', 
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.purpleAccent)
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {}, 
              child: const Text('Start Tasking'),
            ),
          ],
        ),
      ),
    );
  }
}

