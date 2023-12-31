import 'package:carrot_feirinha/src/model/product_model.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

import 'model/user_model.dart';
import 'route/app_routes.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ScopedModel<UserModel>(
      model: UserModel(),
      child: ScopedModel<ProductModel>(
        model: ProductModel(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          routes: routes,
        ),
      ),
    );
  }
}
