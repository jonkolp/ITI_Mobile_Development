// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatefulWidget {
  ProductCard({
    super.key,
    required this.title,
    required this.quantity,
  });
  String title;
  int quantity;

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  bool isClicked = false;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: IconButton(
          icon: Icon(Icons.add_box_rounded),
          onPressed: () {
            setState(() {
              if (widget.quantity >= 1) {
                widget.quantity--;
              }
            });
          },
        ),
        title: Text(
          widget.title,
          style: TextStyle(
            color: Colors.pink,
            fontSize: 18,
          ),
        ),
        subtitle: widget.quantity > 0
            ? Text(
                'Quantity:${widget.quantity}',
              )
            : Text(
                'Out of Stock',
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
        trailing: IconButton(
          icon: Icon(
            Icons.shopping_cart,
            color: isClicked ? Colors.red : Colors.black,
          ),
          onPressed: () {
            setState(() {
              isClicked = !isClicked;
            });
          },
        ),
      ),
    );
  }
}
