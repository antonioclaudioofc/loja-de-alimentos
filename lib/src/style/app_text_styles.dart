import 'package:flutter/material.dart';

import 'app_colors.dart';

mixin AppTextStyles {
  static const h1 = TextStyle(
    fontFamily: "Inter",
    fontSize: 26,
    color: AppColors.black,
    fontWeight: FontWeight.w600,
  );

  static const h2 = TextStyle(
    fontFamily: "Inter",
    fontSize: 20,
    color: AppColors.black,
    fontWeight: FontWeight.w600,
  );

  static const h3 = TextStyle(
    fontFamily: "Inter",
    fontSize: 18,
    color: AppColors.black,
    fontWeight: FontWeight.w600,
  );

  static const h4 = TextStyle(
    fontFamily: "Inter",
    fontSize: 16,
    color: AppColors.black,
    fontWeight: FontWeight.w600,
  );

  static const h5 = TextStyle(
    fontFamily: "Inter",
    fontSize: 14,
    color: AppColors.black,
    fontWeight: FontWeight.w400,
  );
}
