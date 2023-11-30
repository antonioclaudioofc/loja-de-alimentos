import 'package:carrot_feirinha/src/app/app.dart';
import 'package:flutter/material.dart';

class CommonInput extends StatefulWidget {
  const CommonInput({
    Key? key,
    required this.controller,
    this.icon,
    required this.label,
    required this.hintText,
    this.obscureText = false,
    this.onPressed,
    this.prefixText,
  }) : super(key: key);

  final TextEditingController controller;
  final Icon? icon;
  final String label;
  final String hintText;
  final bool obscureText;
  final Function? onPressed;
  final String? prefixText;

  @override
  State<CommonInput> createState() => _CommonInputState();
}

class _CommonInputState extends State<CommonInput> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          style: AppTextStyles.h4,
          textAlign: TextAlign.start,
        ),
        TextField(
          controller: widget.controller,
          style: AppTextStyles.h3,
          obscureText: widget.obscureText,
          decoration: InputDecoration(
            prefixText: widget.prefixText,
            suffixIcon: widget.icon,
            hintText: widget.hintText,
            hintStyle: AppTextStyles.h3,
            border: const UnderlineInputBorder(
              borderSide: BorderSide(
                color: AppColors.gray300,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
