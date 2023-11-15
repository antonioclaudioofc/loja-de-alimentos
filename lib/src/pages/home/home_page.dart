import 'package:carrot_feirinha/src/shared/components/context_main.dart';
import 'package:flutter/material.dart';

import '../../app/app.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ContextMain(),
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.green100,
        onPressed: () {},
        child: Icon(
          Icons.add,
          color: AppColors.black,
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        color: AppColors.green100,
        child: IconTheme(
          child: Padding(
            padding: EdgeInsets.all(12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.home),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.search),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.add_shopping_cart),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.person),
                ),
              ],
            ),
          ),
          data: IconThemeData(
            color: AppColors.black,
          ),
        ),
      ),
    );
  }
}
