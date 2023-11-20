import 'package:flutter/material.dart';

import 'app_colors.dart';

mixin AppTextStyles {
  static const h1 = TextStyle(
    fontFamily: "Inter",
    fontSize: 26,
    color: AppColors.black,
    fontWeight: FontWeight.w500,
  );

  static const subtitle = TextStyle(
    fontFamily: "Inter",
    fontSize: 18,
    color: AppColors.black,
    fontWeight: FontWeight.w500,
  );

  static const h3 = TextStyle(
    fontFamily: "Inter",
    fontSize: 20,
    color: AppColors.black,
    fontWeight: FontWeight.w500,
  );

  static const h4 = TextStyle(
    fontFamily: "Inter",
    fontSize: 14,
    color: AppColors.black,
    fontWeight: FontWeight.w500,
  );


  static const labelInput = TextStyle(
    fontFamily: "Inter",
    fontSize: 16,
    color: AppColors.gray600,
    fontWeight: FontWeight.w500,
  );

  static const labelHint = TextStyle(
    fontFamily: "Inter",
    fontSize: 20,
    color: AppColors.black,
    fontWeight: FontWeight.normal,
  );

  static const caption = TextStyle(
    fontFamily: "Inter",
    fontSize: 16,
    color: AppColors.gray600,
    fontWeight: FontWeight.normal,
  );

  static const button = TextStyle(
    fontFamily: "Inter",
    fontSize: 20,
    color: AppColors.gray50,
    fontWeight: FontWeight.normal,
  );
}
