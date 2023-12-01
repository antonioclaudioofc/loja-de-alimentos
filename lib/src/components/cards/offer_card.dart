import 'package:carrot_feirinha/src/style/exports.dart';
import 'package:flutter/material.dart';

class OfferCard extends StatelessWidget {
  const OfferCard({
    Key? key,
    required this.label,
    required this.labelAction,
    required this.onPressed,
  }) : super(key: key);

  final String label;
  final String labelAction;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          label,
          style: AppTextStyles.h3,
        ),
        TextButton(
          onPressed: onPressed,
          child: Text(
            labelAction,
            style: AppTextStyles.h4.copyWith(
              color: AppColors.green400,
            ),
          ),
        ),
      ],
    );
  }
}
