import 'package:flutter/material.dart';
import 'package:app_galeria/dashboard_screen.dart';
import 'package:app_galeria/profile_screen.dart';
import 'package:app_galeria/like_screen.dart';
import 'package:app_galeria/search_screen.dart';
import 'package:app_galeria/add_post_screen.dart';

class MainHomeScreen extends StatefulWidget {
  const MainHomeScreen({super.key});

  @override
  _MainHomeScreenState createState() => _MainHomeScreenState();
}

class _MainHomeScreenState extends State<MainHomeScreen> {
  int _selectedIndex = 0;

  final List<Widget> widgetOptions = const [
    DashboardScreen(),
    LikeScreen(),
    DashboardScreen(), // dummy untuk index 2
    SearchScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    if (index == 2) {
      // 👉 TOMBOL UNGGAH
      Navigator.push(
        context,
        MaterialPageRoute(builder: (_) => const AddPostScreen()),
      );
      return;
    }

    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetOptions[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.pink,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: 'Like',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_circle,
              size: 36,
            ),
            label: 'Unggah',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
