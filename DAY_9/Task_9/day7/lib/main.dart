// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:day_7/screens/TVShowDashboard.dart';
import 'package:day_7/screens/categories.dart';
import 'package:day_7/screens/home.dart';
import 'package:day_7/screens/movie_screen.dart';
import 'package:day_7/screens/product_list.dart';
import 'package:day_7/screens/settings.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TV & Movies App',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      initialRoute: '/', // Set initial route
      routes: {
      '/tvshows_dashboard': (context) => TVShowDashboard(), 
    },
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    HomePage(),
    CategoriesPage(),
    MovieListPage(),
    TVShowDashboard(),
    ProductListPage(),
    SettingPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      Navigator.pop(context); // Close drawer after selection
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TV & Movies App'),
        backgroundColor: Colors.deepPurple,
      ),
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.deepPurple,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.tv, size: 60, color: Colors.white),
                  SizedBox(height: 10),
                  Text(
                    "TV & Movies App",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            _buildDrawerItem(Icons.home, 'Home', 0),
            _buildDrawerItem(Icons.movie, 'TV Shows', 2),
            _buildDrawerItem(Icons.tv, 'TV Shows Dashboard', 3),
            _buildDrawerItem(Icons.settings, 'Settings', 5),
          ],
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }

  Widget _buildDrawerItem(IconData icon, String title, int index) {
    return ListTile(
      leading: Icon(icon, color: _selectedIndex == index ? Colors.deepPurple : Colors.black),
      title: Text(title, style: TextStyle(fontSize: 16)),
      onTap: () => _onItemTapped(index),
    );
  }
}
