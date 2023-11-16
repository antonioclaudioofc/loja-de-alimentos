import 'package:carrot_feirinha/src/pages/home/home_page.dart';
import 'package:carrot_feirinha/src/shared/components/context_main.dart';
import 'package:flutter/material.dart';

import '../../app/app.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomePage(),
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.white,
        onPressed: () {},
        child: Icon(
          Icons.add,
          color: AppColors.black,
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        color: AppColors.white,
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
