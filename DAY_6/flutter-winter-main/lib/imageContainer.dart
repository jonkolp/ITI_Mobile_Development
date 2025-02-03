import 'package:flutter/material.dart';

class ImageContainer extends StatelessWidget {
  const ImageContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.green),
      width: 250,
      height: 250,
      // color: Colors.green,
      clipBehavior: Clip.hardEdge,
      child: Image.asset(
        'assets/images/img1.jpeg',
        fit: BoxFit.cover,
      ),
    );
  }
}
