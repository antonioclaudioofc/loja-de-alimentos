import 'package:carrot_feirinha/src/app/app.dart';
import 'package:carrot_feirinha/src/app/app_text_styles.dart';
import 'package:flutter/material.dart';

class DefaultFormField extends StatelessWidget {
  const DefaultFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Email',
            style: AppTextStyles.labelInput,
            textAlign: TextAlign.start,
          ),
          TextField(
            style: AppTextStyles.labelHint,
            decoration: InputDecoration(
              hintText: "Digite o email",
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
