import 'package:carrot_feirinha/src/pages/home/home_page.dart';
import 'package:carrot_feirinha/src/pages/navigation/navigation_page.dart';
import 'package:carrot_feirinha/src/pages/search/search_page.dart';
import 'package:flutter/material.dart';

import '../pages/signin/signin_page.dart';
import '../pages/signup/signup_page.dart';

Map<String, Widget Function(BuildContext)> routes = {
  PagePaths.signupPath: (context) => const SignupPage(),
  PagePaths.signinPath: (context) => const SigninPage(),
  PagePaths.homePath: (context) => const HomePage(),
  PagePaths.navigationPath: (contex) => const NavigationPage(),
  // PagePaths.searchPath: (context) => const SearchPage(),
};

class PagePaths {
  static const String signinPath = "/";
  static const String signupPath = "/signup";
  static const String navigationPath = "/navigation";
  static const String homePath = "/home";
  static const String searchPath = "/navigation";
}
