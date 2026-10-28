import 'package:flutter/material.dart';

class LikeScreen extends StatelessWidget {
  const LikeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ===== HEADER =====
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/app_galeria_icon.png',
                    height: 32,
                  ),
                  const SizedBox(width: 8),
                  const Text(
                    'Galeria',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 24),

              const Text(
                'Karya Disukai',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 16),

              // ===== GRID IMAGE =====
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  children: [
                    _likedCard('assets/lizzy.jpeg'),
                    _likedCard('assets/blue_haired.jpeg'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _likedCard(String imagePath) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Image.asset(
            imagePath,
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        const Positioned(
          bottom: 8,
          left: 8,
          child: Icon(
            Icons.favorite,
            color: Colors.red,
            size: 20,
          ),
        ),
      ],
    );
  }
}
