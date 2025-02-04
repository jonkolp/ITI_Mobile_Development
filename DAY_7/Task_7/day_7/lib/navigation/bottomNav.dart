// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:day_7/screens/categories.dart';
import 'package:day_7/screens/home.dart';
import 'package:day_7/screens/product_list.dart';
import 'package:day_7/screens/settings.dart';
import 'package:flutter/material.dart';

class DrawerNavigationDemo extends StatefulWidget {
  const DrawerNavigationDemo({super.key});

  @override
  State<DrawerNavigationDemo> createState() => _DrawerNavigationDemoState();
}

class _DrawerNavigationDemoState extends State<DrawerNavigationDemo> {
  int _selectedIndex = 0;
  List<Widget> screens = [
    HomePage(),
    ProductListPage(),
    CategoriesPage(),
    SettingPage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    Navigator.pop(context); // Close the drawer after selecting an item
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
        backgroundColor: Colors.amber,
      ),
      body: screens[_selectedIndex],
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.amber,
              ),
              child: Text(
                'Navigation Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () => _onItemTapped(0),
            ),
            ListTile(
              leading: Icon(Icons.shopify_outlined),
              title: Text('Products'),
              onTap: () => _onItemTapped(1),
            ),
            ListTile(
              leading: Icon(Icons.category),
              title: Text('Categories'),
              onTap: () => _onItemTapped(2),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () => _onItemTapped(3),
            ),
          ],
        ),
      ),
    );
  }
}
