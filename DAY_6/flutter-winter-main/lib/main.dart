// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:day_1/columRow.dart';
import 'package:day_1/imageContainer.dart';
import 'package:day_1/productlist.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(FirstScreen());
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // return CupertinoApp();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My First app',
      // home: Text('hello from flutter'),
      home: Scaffold(
          appBar: AppBar(
            title: Center(
              child: Text('Day 2'),
            ),
            // leading: Icon(Icons.arrow_back),
            actions: [
              Icon(Icons.access_alarms_sharp),
              Text(
                'logout',
                textDirection: TextDirection.ltr,
              )
            ],
            backgroundColor: Colors.amber,
          ),
          body: ProductList()),
    );
  }
}
