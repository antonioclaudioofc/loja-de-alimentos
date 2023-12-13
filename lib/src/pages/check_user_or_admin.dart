import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

import '../model/user_model.dart';
import 'navigation_page_admin.dart';
import 'navigation_page_user.dart';

class CheckUserOnAdmin extends StatelessWidget {
  const CheckUserOnAdmin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<UserModel>(builder: (context, child, model) {
      if (model.isUserAdmin()) return NavigationPageAdmin();

      return NavigationPageUser();
    });
  }
}
