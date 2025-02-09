// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Column(
        children: [
          _buildHeroSection(), // Hero Section with Image & Text
          SizedBox(height: 20),
          _buildTagline(),
        ],
      ),
    );
  }

  // Hero Section (Banner)
  Widget _buildHeroSection() {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 250,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/home_banner.png'), // Add a high-quality image
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          width: double.infinity,
          height: 250,
          color: Colors.black.withOpacity(0.4), // Dark overlay
        ),
        Positioned(
          left: 20,
          bottom: 20,
          child: Text(
            'Explore Movies & TV Shows',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }

  // Tagline Text
  Widget _buildTagline() {
    return Text(
      'Find Your Next Favorite Movie or TV Show!',
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Colors.deepPurple,
      ),
      textAlign: TextAlign.center,
    );
  }

}
