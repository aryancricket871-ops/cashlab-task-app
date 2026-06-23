import 'package:flutter/material.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0D0714),
      appBar: AppBar(title: const Text('Withdrawal'), backgroundColor: Colors.transparent),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // बैलेंस बॉक्स
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(color: Color(0xFF1A1226), borderRadius: BorderRadius.circular(15)),
              child: const Column(
                children: [
                  Text('Available Balance', style: TextStyle(color: Colors.grey)),
                  Text('₹1,245.50', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white)),
                ],
              ),
            ),
            const SizedBox(height: 20),
            // पेमेंट मेथड लिस्ट
            Expanded(
              child: ListView(
                children: [
                  _buildPaymentTile('UPI', Icons.account_balance_wallet),
                  _buildPaymentTile('Paytm', Icons.payment),
                  _buildPaymentTile('Google Pay', Icons.g_mobiledata),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(backgroundColor: Colors.purpleAccent, minimumSize: Size(double.infinity, 50)),
              child: const Text('Withdraw Now'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPaymentTile(String name, IconData icon) {
    return RadioListTile(
      value: name, groupValue: 'UPI', onChanged: (val) {},
      title: Text(name, style: const TextStyle(color: Colors.white)),
      secondary: Icon(icon, color: Colors.purpleAccent),
    );
  }
}

