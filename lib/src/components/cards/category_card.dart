import 'package:carrot_feirinha/src/app/app.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.urlImage,
    required this.label,
    required this.color,
  }) : super(key: key);

  final String urlImage;
  final String label;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
      ),
      child: Container(
        width: 256,
        height: 96,
        padding: const EdgeInsets.only(
          left: 16,
        ),
        decoration: ShapeDecoration(
          color: color,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: 1,
              color: color,
            ),
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        child: Row(
          children: [
            Image.asset(
              urlImage,
              fit: BoxFit.fitWidth,
              width: 64,
              height: 64,
            ),
            const SizedBox(
              width: 16,
            ),
            Text(
              label,
              style: AppTextStyles.h3.copyWith(
                fontWeight: FontWeight.w400,
                color: AppColors.gray900,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
