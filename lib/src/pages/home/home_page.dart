import 'package:carrot_feirinha/src/app/app.dart';
import 'package:carrot_feirinha/src/pages/components/label_title_product.dart';
import 'package:carrot_feirinha/src/shared/components/card_product.dart';
import 'package:flutter/material.dart';

import '../../shared/components/context_main.dart';
import '../../shared/components/input_search.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ContextMain(),
          SizedBox(
            height: 24,
          ),
          InputSearch(),
          SizedBox(
            height: 24,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24.0,
            ),
            child: Image.asset(
              "assets/images/fruits.jpg",
              width: double.infinity,
              height: 112,
              fit: BoxFit.fitWidth,
            ),
          ),
          LabelTitleProduct(),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 16,
            ),
            height: 240,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                CardProduct(),
                CardProduct(),
                CardProduct(),
                CardProduct(),
                CardProduct(),
              ],
            ),
          ),
          SizedBox(
            height: 112,
          ),
        ],
      ),
    );
  }
}
