import 'package:carrot_feirinha/src/pages/home/home_page.dart';
import 'package:carrot_feirinha/src/shared/components/context_main.dart';
import 'package:flutter/material.dart';

import '../../app/app.dart';
import '../search/search_page.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    HomePage(),
    SearchPage(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: AppColors.gray700,
        selectedItemColor: AppColors.green400,
        onTap: onTabTapped,
        showUnselectedLabels: true,
        currentIndex: _currentIndex,
        selectedIconTheme: IconThemeData(
          color: AppColors.green400,
        ),
        backgroundColor: AppColors.gray100,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: "Inicio",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
            ),
            label: "Buscar",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add,
            ),
            label: "Adicionar",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_shopping_cart,
            ),
            label: "Carrinho",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: "Perfil",
          )
        ],
      ),
    );
  }
}
