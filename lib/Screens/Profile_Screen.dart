import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F0FA),
      body: Column(
        children: [
          // Header section
          Container(
            width: double.infinity,
            padding: const EdgeInsets.fromLTRB(20, 50, 20, 30),
            color: const Color.from(
                alpha: 1, red: 0.502, green: 0.047, blue: 0.047),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.arrow_back, color: Colors.white),
                      onPressed: () => Navigator.of(context).pop(),
                    ),
                    const Text(
                      'Profile',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    const Icon(Icons.settings, color: Colors.white),
                  ],
                ),
                const SizedBox(height: 20),
                const CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage("assets/images/girl profile.png"),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Hani Baig',
                  style: TextStyle(fontSize: 22, color: Colors.white),
                ),
                const SizedBox(height: 5),
                const Text(
                  'hani.baig@example.com',
                  style: TextStyle(fontSize: 14, color: Colors.white70),
                ),
              ],
            ),
          ),

          // List section
          const ListTile(
            title: Text('Account'),
          ),
          const Divider(),

          const ListTile(
            title: Text('Notifications'),
          ),
          const Divider(),

          const ListTile(
            title: Text('Privacy'),
          ),
          const Divider(),

          const ListTile(
            title: Text('Help & Support'),
          ),
          const Divider(),

          const ListTile(
            title: Text('Logout'),
          ),
          const Divider(),
        ],
      ),
    );
  }
}
