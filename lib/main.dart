import 'package:flutter/material.dart';
import 'login_screen.dart'; // लॉगिन फाइल को यहाँ जोड़ा

void main() => runApp(const CashLabApp());

class CashLabApp extends StatelessWidget {
  const CashLabApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF0D0714),
        primaryColor: Colors.deepPurpleAccent,
      ),
      home: LoginScreen(), // सबसे पहले लॉगिन पेज खुलेगा
    );
  }
}
