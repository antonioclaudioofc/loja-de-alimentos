import 'package:carrot_feirinha/src/pages/home/home_page.dart';
import 'package:flutter/material.dart';

import '../../app/app.dart';
import '../account/account_page.dart';
import '../add_product/add_product_page.dart';
import '../my_cart/my_cart_page.dart';
import '../search/search_page.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    const HomePage(),
    const SearchPage(),
    const AddProductPage(),
    const MyCartPage(),
    const AccountPage(),
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
        selectedIconTheme: const IconThemeData(
          color: AppColors.green400,
        ),
        backgroundColor: AppColors.gray100,
        items: const [
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
