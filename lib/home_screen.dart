import 'package:flutter/material.dart';
// 1. सबसे पहले इन फाइल्स को यहाँ इम्पोर्ट करो
import 'tasks_screen.dart';
import 'wallet_screen.dart';
import 'profile_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  // 2. यहाँ पेजेस की लिस्ट बनाओ
  final List<Widget> _pages = [
    const Center(child: Text("Welcome to Home Dashboard!", style: TextStyle(color: Colors.white))),
    const TasksScreen(), 
    const WalletScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 3. यहाँ _pages[_selectedIndex] का मतलब है कि जो बटन दबाओगे, वो पेज दिखेगा
      body: _pages[_selectedIndex], 
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, // यह जरूरी है ताकि 4 से ज्यादा आइकन सही दिखें
        backgroundColor: const Color(0xFF1A1226),
        selectedItemColor: Colors.purpleAccent,
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedIndex,
        onTap: (index) => setState(() => _selectedIndex = index),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.task), label: 'Tasks'),
          BottomNavigationBarItem(icon: Icon(Icons.wallet), label: 'Wallet'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
