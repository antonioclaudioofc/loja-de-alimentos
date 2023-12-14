import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../style/app_colors.dart';
import '../../style/app_text_styles.dart';

class CustomButton extends StatefulWidget {
  const CustomButton({
    Key? key,
    required this.label,
    required this.onTap,
    this.color = AppColors.green600,
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
    return ElevatedButton(
      onPressed: widget.onTap,
      style: ElevatedButton.styleFrom(
        backgroundColor: widget.color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 14),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            if (widget.isGoogle)
              Row(
                children: [
                  const SizedBox(
                    width: 16,
                  ),
                  SvgPicture.asset(
                    "assets/images/icon_google.svg",
                    height: 20,
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
    );
  }
}
