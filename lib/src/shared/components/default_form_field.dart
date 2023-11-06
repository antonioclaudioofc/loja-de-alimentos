import 'package:carrot_feirinha/src/app/app.dart';
import 'package:carrot_feirinha/src/app/app_text_styles.dart';
import 'package:flutter/material.dart';

class DefaultFormField extends StatefulWidget {
  const DefaultFormField({
    Key? key,
    this.label,
    this.hintText,
  }) : super(key: key);

  final String? label;
  final String? hintText;

  @override
  State<DefaultFormField> createState() => _DefaultFormFieldState();
}

class _DefaultFormFieldState extends State<DefaultFormField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.label ?? "",
            style: AppTextStyles.labelInput,
            textAlign: TextAlign.start,
          ),
          TextField(
            style: AppTextStyles.labelHint,
            decoration: InputDecoration(
              hintText: widget.hintText,
              hintStyle: AppTextStyles.labelHint,
              border: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: AppColors.gray300,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
