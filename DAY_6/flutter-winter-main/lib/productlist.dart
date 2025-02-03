// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:day_1/productCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductList extends StatelessWidget {
  ProductList({super.key});
  List<Map<String, dynamic>> products = [
    {'productName': 'IPhone', 'quantity': 3},
    {'productName': 'Laptob', 'quantity': 2},
    {'productName': 'Tablet', 'quantity': 1},
    {'productName': 'HeadPhone', 'quantity': 4}
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) => ProductCard(
              title: products[index]['productName'],
              quantity: products[index]['quantity'],
            ),
        separatorBuilder: (context, index) => SizedBox(),
        itemCount: products.length);
  }
}


// ListView.separated(
//         itemBuilder: (context, index) => ProductCard(
//               title: products[index],
//             ),
//         separatorBuilder: (context, index) => SizedBox(),
//         itemCount: products.length)

//  ListView.builder(
//       itemBuilder: (context, index) => Text(products[index],
//           style: TextStyle(color: Colors.red, fontSize: 40)),
//       itemCount: products.length,
//     );

  // ListView(
  //     children: [
  //       Text(
  //         'Item1',
  //         style: TextStyle(color: Colors.red, fontSize: 40),
  //       ),
  //       Text(
  //         'Item1',
  //         style: TextStyle(color: Colors.orange, fontSize: 40),
  //       ),
  //       Text(
  //         'Item1',
  //         style: TextStyle(color: Colors.green, fontSize: 40),
  //       ),
  //     ],
  //   );
 