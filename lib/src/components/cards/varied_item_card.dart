import 'package:flutter/material.dart';

import '../../style/app_text_styles.dart';

class VariedItemCard extends StatelessWidget {
  const VariedItemCard({
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
    return Container(
      width: double.infinity,
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
              width: 112,
              height: 112,
              fit: BoxFit.fitWidth,
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              label,
              style: AppTextStyles.h4,
            ),
          ],
        ),
      ),
    );
  }
}
