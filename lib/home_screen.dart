// home_screen.dart का नया डिज़ाइन कोड
Card(
  color: const Color(0xFF1A1226), // वही प्रीमियम शेड
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
  child: ListTile(
    leading: const Icon(Icons.play_circle_fill, color: Colors.purpleAccent, size: 40),
    title: const Text('Watch Videos', style: TextStyle(color: Colors.white)),
    trailing: ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: Colors.purpleAccent),
      onPressed: () {}, 
      child: const Text('Start'),
    ),
  ),
),
