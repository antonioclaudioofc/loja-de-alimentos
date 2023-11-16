import 'package:carrot_feirinha/src/app/app.dart';
import 'package:flutter/material.dart';

class LabelTitleProduct extends StatelessWidget {
  const LabelTitleProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          "Ofertas Exclusivas",
          style: AppTextStyles.h3,
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            "Ver mais",
            style: AppTextStyles.h4.copyWith(
              color: AppColors.green400,
            ),
          ),
        ),
      ],
    );
  }
}
