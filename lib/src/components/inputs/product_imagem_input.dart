import 'package:carrot_feirinha/src/app/app_colors.dart';
import 'package:flutter/material.dart';

class ProductImageInput extends StatelessWidget {
  const ProductImageInput({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: 124,
        height: 124,
        decoration: BoxDecoration(
          color: AppColors.gray300,
          borderRadius:
              BorderRadius.circular(64), // Ajuste o valor conforme necessário
        ),
        child: const Align(
          alignment: Alignment.bottomRight,
          child: Icon(
            Icons.camera_alt,
            size: 50,
            color: AppColors.gray800,
          ),
        ),
      ),
    );
  }
}
