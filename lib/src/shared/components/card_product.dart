import 'package:flutter/material.dart';

class CardProduct extends StatefulWidget {
  const CardProduct({super.key});

  @override
  State<CardProduct> createState() => _CardProductState();
}

class _CardProductState extends State<CardProduct> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      height: 240,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1,
            color: Colors.white,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      child: Column(
        children: [
          Container(
            width: 96,
            height: 74,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/fruits.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      ),
    );
  }
}
