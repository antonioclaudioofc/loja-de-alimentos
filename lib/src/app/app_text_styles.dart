import 'package:flutter/material.dart';

import 'app_colors.dart';

mixin AppTextStyles {
  static const h1 = TextStyle(
    fontFamily: "Inter",
    fontSize: 26,
    color: AppColors.black,
    fontWeight: FontWeight.w500,
  );

  static const labelInput = TextStyle(
    fontFamily: "Inter",
    fontSize: 16,
    color: AppColors.gray600,
    fontWeight: FontWeight.w500,
  );

  static const caption = TextStyle(
    fontFamily: "Inter",
    fontSize: 14,
    color: AppColors.gray600,
    fontWeight: FontWeight.w500,
  );

  static const h2 = TextStyle(
    fontFamily: "Inter",
    fontSize: 48,
    color: AppColors.black,
    fontWeight: FontWeight.bold,
  );

  static const h3 = TextStyle(
    fontFamily: "Inter",
    fontSize: 40,
    color: AppColors.black,
    fontWeight: FontWeight.bold,
  );

  static const h4 = TextStyle(
    fontFamily: "Inter",
    fontSize: 32,
    color: AppColors.black,
    fontWeight: FontWeight.bold,
  );

  static const h5 = TextStyle(
    fontFamily: "Inter",
    fontSize: 24,
    color: AppColors.black,
    fontWeight: FontWeight.bold,
  );

  static const h6 = TextStyle(
    fontFamily: "Inter",
    fontSize: 20,
    color: AppColors.black,
    fontWeight: FontWeight.bold,
  );

  static const subtitle = TextStyle(
    fontFamily: "Inter",
    fontSize: 16,
    color: AppColors.black,
    fontWeight: FontWeight.w500,
  );

  static const bodySmall = TextStyle(
    fontFamily: "Inter",
    fontSize: 14,
    color: AppColors.black,
    fontWeight: FontWeight.w400,
  );

  static const body = TextStyle(
    fontFamily: "Inter",
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.black,
  );

  static const bodyLarge = TextStyle(
    fontFamily: "Inter",
    fontSize: 18,
    fontWeight: FontWeight.w400,
    color: AppColors.black,
  );  

  static const buttonSmall = TextStyle(
    fontFamily: "Inter",
    fontSize: 14,
    fontWeight: FontWeight.bold,
    color: AppColors.black,
  );

  static const button = TextStyle(
    fontFamily: "Inter",
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: AppColors.black,
  );

  static const buttonLarge = TextStyle(
    fontFamily: "Inter",
    fontSize: 18,
    fontWeight: FontWeight.w500,
    color: AppColors.gray50,
  );
}