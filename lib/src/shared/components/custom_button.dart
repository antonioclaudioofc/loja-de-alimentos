import 'package:flutter/material.dart';

import '../../app/app.dart';

class CustomButton extends StatefulWidget {
  const CustomButton({
    Key? key,
    this.label,
    required this.onPressed,
  }) : super(key: key);

  final String? label;
  final void Function()? onPressed;

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 56,
      child: ElevatedButton(
        onPressed: widget.onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.green600,
        ),
        child: Text(
          widget.label ?? "",
          style: AppTextStyles.button,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
