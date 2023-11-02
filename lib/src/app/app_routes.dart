import 'package:flutter/material.dart';

import '../pages/signin/signin_page.dart';

Map<String, Widget Function(BuildContext)> routes = {
  // PagePaths.signupPath: (context) => const SignupPage(),
  PagePaths.signinPath: (context) => const SigninPage(),
};

class PagePaths {
  static const String signinPath = "/";
  static const String signupPath = "/signup";
}