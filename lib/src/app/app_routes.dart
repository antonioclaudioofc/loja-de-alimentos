import 'package:carrot_feirinha/src/pages/home/home_page.dart';
import 'package:flutter/material.dart';

import '../pages/signin/signin_page.dart';
import '../pages/signup/signup_page.dart';

Map<String, Widget Function(BuildContext)> routes = {
  PagePaths.signupPath: (context) => const SignupPage(),
  PagePaths.signinPath: (context) => const SigninPage(),
  PagePaths.homePath: (context) => const HomePage(),
};

class PagePaths {
  static const String signinPath = "/";
  static const String signupPath = "/signup";
  static const String homePath = "/home";
}
