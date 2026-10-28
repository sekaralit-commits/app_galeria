import 'package:flutter/material.dart';
import 'settings_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/app_galeria_icon.png',
              height: 28,
            ),
            const SizedBox(width: 8),
            const Text(
              'Galeria',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),

        // ✅ MENU BUTTON
        actions: [
          IconButton(
            icon: const Icon(Icons.menu, color: Colors.black),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const SettingsScreen(),
                ),
              );
            },
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ===== COVER =====
            Container(
              height: 140,
              color: const Color(0xFFFFC1D9),
            ),

            // ===== PROFILE IMAGE =====
            Transform.translate(
              offset: const Offset(0, -50),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 45,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 42,
                        backgroundImage:
                            const AssetImage('assets/profile.jpg'),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // ===== CONTENT =====
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 8),

                  const Text(
                    'Sekar Alit Apsari',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 4),

                  const Text(
                    '@4_me_y_4_u',
                    style: TextStyle(color: Colors.grey),
                  ),

                  const SizedBox(height: 12),

                  const Text(
                    'Sekar Alit’s hands from year to year.\n'
                    'A place that mind, feelings, body and soul are connected.',
                    style: TextStyle(fontSize: 14),
                  ),

                  const SizedBox(height: 16),

                  SizedBox(
                    width: 120,
                    height: 36,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFFF6296),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: const Text(
                        'Edit Profil',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
