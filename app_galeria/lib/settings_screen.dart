import 'package:flutter/material.dart';
import 'info_screen.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        title: Row(
          children: [
            Image.asset(
              'assets/app_galeria_icon.png',
              width: 28,
              height: 28,
            ),
            const SizedBox(width: 8),
            const Text('Galeria'),
          ],
        ),
      ),
      body: Column(
        children: [
          ListTile(
            leading: const Icon(Icons.info_outline),
            title: const Text('Information'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const InfoScreen(),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Log Out'),
            onTap: () {
              Navigator.popUntil(context, (route) => route.isFirst);
            },
          ),
        ],
      ),
    );
  }
}
