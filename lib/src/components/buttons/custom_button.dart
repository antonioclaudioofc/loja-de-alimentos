import 'package:flutter/material.dart';

import '../../app/app_colors.dart';
import '../../app/app_text_styles.dart';

class CustomButton extends StatefulWidget {
  const CustomButton({
    Key? key,
    required this.label,
    required this.onTap,
    this.color,
    this.icon,
    this.logout = false,
  }) : super(key: key);

  final String label;
  final Color? color;
  final Icon? icon;
  final bool logout;
  final void Function() onTap;

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        width: double.infinity,
        height: 56,
        decoration: ShapeDecoration(
          color: widget.logout ? AppColors.gray200 : AppColors.green400,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (widget.logout)
                const Row(
                  children: [
                    SizedBox(
                      width: 12,
                    ),
                    Icon(
                      Icons.logout,
                      color: AppColors.red500,
                    ),
                  ],
                ),
              Expanded(
                child: Text(
                  widget.label,
                  style: AppTextStyles.h3.copyWith(
                    color: widget.logout ? AppColors.red500 : AppColors.gray50,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
