import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'login_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  // यह रहा तुम्हारा परफेक्ट Firebase सेटअप
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyCd8LLizgAWzxgQqDNyK2EA_TgbUhNrDyI",
      appId: "1:182759550309:android:750543390c3e5cdfe2c58c",
      messagingSenderId: "182759550309",
      projectId: "cashlab-728d6",
      storageBucket: "cashlab-728d6.firebasestorage.app",
    ),
  );
  
  runApp(const CashLabApp());
}

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
      home: LoginScreen(),
    );
  }
}

class AIService {
  static final model = GenerativeModel(
    model: 'gemini-pro',
    apiKey: 'AQ.Ab8RN6KlWJ3VYysU7qBM7LyVonXxnvFhAp5i_XNTeFyPIuph_g',
  );
  
  static Future<String> getTaskHelp(String task) async {
    final response = await model.generateContent([Content.text('Help me complete $task')]);
    return response.text ?? "Error";
  }
}

