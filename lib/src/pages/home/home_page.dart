import 'package:carrot_feirinha/src/app/app.dart';
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
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 24.0,
              ),
              child: Image.asset(
                "assets/images/fruits.jpg",
                width: double.infinity,
              ),
            ),
          )
        ],
      ),
    );
  }
}
