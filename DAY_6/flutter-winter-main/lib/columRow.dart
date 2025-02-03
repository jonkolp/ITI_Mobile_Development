// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomColum extends StatelessWidget {
  CustomColum({super.key});

  List<Map<String, dynamic>> mylist = [
    {'item': 20, 'color': Colors.amber},
    {'item': 40, 'color': Colors.pink},
    {'item': 60, 'color': Colors.orange},
    {'item': 4, 'color': Colors.blue},
    {'item': 232, 'color': Colors.green},
    {'item': 23, 'color': Colors.deepPurple},
    {'item': 342, 'color': Colors.red},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: SingleChildScrollView(
        // scrollDirection: Axis.horizontal,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Icon(Icons.ac_unit_outlined),
            Container(
              color: Colors.blue,
              width: 200,
              height: 200,
              child: Text(
                'Container 1',
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(
              height: 20,
            ),

            Container(
              color: Colors.pink,
              width: 200,
              height: 200,
              child: Text(
                'Container 2',
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(
              height: 30,
            ),

            Container(
              color: Colors.green,
              width: 200,
              height: 200,
              child: Text(
                'Container 3',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Container(
              color: Colors.amber,
              width: 200,
              height: 200,
              child: Text(
                'Container 3',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Divider(
              thickness: 10,
            ),
            Container(
              color: Colors.deepOrangeAccent,
              width: 200,
              height: 200,
              child: Text(
                'Container 3',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),

        //  Row(
        //     children: mylist
        //         .map((item) => Container(
        //               // margin: EdgeInsets.all(5),
        //               color: item['color']!,
        //               width: 200,
        //               height: 200,
        //               child: Text('Item:${item['item']}',
        //                   style: TextStyle(color: Colors.white)),
        //             ))
        //         .toList())
        // //
      ),
    );
  }
}


  
            //  List.generate(
            //   10,
            //   (index) => 
            // Container(
            //     color: Colors.blue[100 * index],
            //     width: 100,
            //     height: 100,
            //     child: Text(
            //       'Container $index',
            //       style: TextStyle(color: Colors.white),
            //     ),
            //   ),
            // ),
         
//  Column(
//   mainAxisAlignment: MainAxisAlignment.start,
//   // crossAxisAlignment: CrossAxisAlignment.center,
//   children: [
//     // Icon(Icons.ac_unit_outlined),
// Container(
//   color: Colors.blue,
//   width: 200,
//   height: 200,
//   child: Text(
//     'Container 1',
//     style: TextStyle(color: Colors.white),
//   ),
// ),

//     Container(
//       color: Colors.pink,
//       width: 200,
//       height: 200,
//       child: Text(
//         'Container 2',
//         style: TextStyle(color: Colors.white),
//       ),
//     ),

//     Container(
//       color: Colors.green,
//       width: 200,
//       height: 200,
//       child: Text(
//         'Container 3',
//         style: TextStyle(color: Colors.white),
//       ),
//     ),
//     Container(
//       color: Colors.amber,
//       width: 200,
//       height: 200,
//       child: Text(
//         'Container 3',
//         style: TextStyle(color: Colors.white),
//       ),
//     ),
//     Container(
//       color: Colors.deepOrangeAccent,
//       width: 200,
//       height: 200,
//       child: Text(
//         'Container 3',
//         style: TextStyle(color: Colors.white),
//       ),
//     ),
//   ],
// ),

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
