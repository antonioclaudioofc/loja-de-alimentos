import 'package:carrot_feirinha/src/style/exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
    this.type,
    this.inputFormatter,
    this.validator,
  }) : super(key: key);

  final TextEditingController controller;
  final Icon? icon;
  final String label;
  final String hintText;
  final bool obscureText;
  final Function? onPressed;
  final String? prefixText;
  final TextInputType? type;
  final List<TextInputFormatter>? inputFormatter;
  final String Function(String?)? validator;

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
          style: AppTextStyles.h4.copyWith(
            color: AppColors.gray600,
          ),
          textAlign: TextAlign.start,
        ),
        TextFormField(
          controller: widget.controller,
          keyboardType: widget.type,
          inputFormatters: widget.inputFormatter,
          style: AppTextStyles.h3,
          obscureText: widget.obscureText,
          decoration: InputDecoration(
            prefixText: widget.prefixText,
            suffixIcon: widget.icon,
            hintText: widget.hintText,
            hintStyle: AppTextStyles.h3.copyWith(
              color: AppColors.gray400,
            ),
            border: const UnderlineInputBorder(
              borderSide: BorderSide(
                color: AppColors.gray300,
              ),
            ),
          ),
          validator: widget.validator,
        ),
      ],
    );
  }
}
