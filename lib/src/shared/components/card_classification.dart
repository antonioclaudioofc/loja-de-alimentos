import 'package:flutter/material.dart';

import '../../app/app.dart';

class CardClassification extends StatelessWidget {
  const CardClassification({
    Key? key,
    required this.urlImage,
    required this.label,
    required this.color,
  });

  final String urlImage;
  final String label;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 144,
      height: 176,
      decoration: ShapeDecoration(
        color: color.withOpacity(0.5),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1,
            color: color,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      child: Center(
        child: Column(
          children: [
            Image.asset(
              urlImage,
              width: 96,
              height: 96,
              fit: BoxFit.fitWidth,
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              label,
              style: AppTextStyles.labelInput.copyWith(
                color: AppColors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
