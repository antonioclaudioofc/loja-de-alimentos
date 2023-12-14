import 'package:carrot_feirinha/src/pages/check_user_or_admin.dart';
import 'package:carrot_feirinha/src/pages/navigation_page_admin.dart';
import 'package:carrot_feirinha/src/pages/product_details_page.dart';
import 'package:carrot_feirinha/src/pages/store_catagol_page.dart';
import 'package:flutter/material.dart';

import '../pages/add_product_page.dart';
import '../pages/form_product_page.dart';
import '../pages/home_page.dart';
import '../pages/navigation_page_user.dart';
import '../pages/search_page.dart';
import '../pages/signin_page.dart';
import '../pages/signup_page.dart';

Map<String, Widget Function(BuildContext)> routes = {
  PagePaths.signupPath: (context) => const SignupPage(),
  PagePaths.signinPath: (context) => const SigninPage(),
  PagePaths.homePath: (context) => const HomePage(),
  PagePaths.navigationUserPath: (contex) => const NavigationPageUser(),
  PagePaths.navigationAdminPath: (contex) => const NavigationPageAdmin(),
  PagePaths.checkUserOrAdmin: (contex) => const CheckUserOnAdmin(),
  PagePaths.searchPath: (context) => const SearchPage(),
  PagePaths.addProduct: (context) => const AddProductPage(),
  PagePaths.formProduct: (context) => const FormProductPage(),
  PagePaths.catalogProduct: (context) => const StoreCatagolPage(),
};

class PagePaths {
  static const String signinPath = "/";
  static const String signupPath = "/signup";
  static const String navigationUserPath = "/navigation_user";
  static const String navigationAdminPath = "/navigation_admin";
  static const String checkUserOrAdmin = "/check";
  static const String homePath = "/home";
  static const String searchPath = "/search";
  static const String addProduct = "/add_product";
  static const String formProduct = "/form_product";
  static const String catalogProduct = "/catalog_product";
}
