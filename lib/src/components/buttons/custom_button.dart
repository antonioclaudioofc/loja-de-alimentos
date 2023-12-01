import 'package:flutter/material.dart';

import '../../style/app_colors.dart';
import '../../style/app_text_styles.dart';

class CustomButton extends StatefulWidget {
  const CustomButton({
    Key? key,
    required this.label,
    required this.onTap,
    this.color = AppColors.green400,
    this.icon,
    this.logout = false,
    this.isGoogle = false,
  }) : super(key: key);

  final String label;
  final Color? color;
  final Icon? icon;
  final bool logout;
  final bool isGoogle;
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
        padding: const EdgeInsets.symmetric(
          vertical: 12,
        ),
        decoration: ShapeDecoration(
          color: widget.color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (widget.isGoogle)
                const Row(
                  children: [
                    SizedBox(
                      width: 16,
                    ),
                    Icon(
                      Icons.g_mobiledata_outlined,
                      color: AppColors.gray50,
                    ),
                  ],
                ),
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
