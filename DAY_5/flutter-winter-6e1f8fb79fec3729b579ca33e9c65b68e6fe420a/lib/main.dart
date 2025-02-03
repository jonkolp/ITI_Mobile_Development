// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/cupertino.dart';
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
              child: Text('First App'),
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
          body: Container(
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
          )

          // Column(
          //   children: [
          //     Expanded(
          //       child: Container(
          //         color: Colors.green,
          //       ),
          //     ),
          //     Expanded(
          //       child: Container(
          //         color: Colors.red,
          //       ),
          //     ),
          //   ],
          // )

          // Row(
          //   children: [
          //     Container(
          //       color: Colors.blue,
          //       width: 200,
          //       height: 150,
          //     ),
          // Expanded(
          //   child: Container(
          //     color: Colors.green,
          //     width: 300,
          //     height: 150,
          //   ),
          // ),
          //   ],
          // )

          // Container(
          //   width: double.infinity,
          //   height: double.infinity,
          //   child: Column(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     crossAxisAlignment: CrossAxisAlignment.center,
          //     children: [
          //       // Icon(Icons.ac_unit_outlined),
          //       Expanded(
          //         child: Container(
          //           color: Colors.blue,
          //           width: 100,
          //           height: 150,
          //         ),
          //       ),
          //       Expanded(
          //         child: Container(
          //           color: Colors.pink,
          //           width: 100,
          //           height: 150,
          //         ),
          //       ),
          //       Expanded(
          //         child: Container(
          //           color: Colors.green,
          //           width: 100,
          //           height: 150,
          //         ),
          //       ),
          //     ],
          //   ),
          // )

          // Container(
          //   padding: EdgeInsets.all(20),
          //   margin: EdgeInsets.all(30),
          //   decoration: BoxDecoration(
          //       color: Colors.blue, borderRadius: BorderRadius.circular(10)),
          //   child: Text('Amira'),
          // )

          // Container(
          //   // width: 200,
          //   // height: 200,
          //   padding: EdgeInsets.all(18),
          //   margin: EdgeInsets.only(top: 20),
          //   child: Text(
          //     'iti winter trainning',
          //     style: TextStyle(fontSize: 20),
          //   ),
          //   color: Colors.blue.shade200,
          // ),

          ),
    );
  }
}
