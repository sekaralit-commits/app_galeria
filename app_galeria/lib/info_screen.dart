import 'package:flutter/material.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({super.key});

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
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Information',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 24),
            Center(
              child: Column(
                children: [
                  Text('v1.0 (Beta)'),
                  SizedBox(height: 12),
                  Text('Dikembangkan oleh:'),
                  Text(
                    'Sekar Alit Apsari',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 12),
                  Text(
                    'Proyek Tugas Mata Kuliah\nPemrograman Aplikasi Mobile',
                    textAlign: TextAlign.center,
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
