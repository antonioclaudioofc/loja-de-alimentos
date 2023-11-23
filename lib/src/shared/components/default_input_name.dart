import 'package:flutter/material.dart';

import '../../app/app.dart';

class DefaultInputName extends StatelessWidget {
  const DefaultInputName({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Nome",
          style: AppTextStyles.labelInput.copyWith(
            color: AppColors.gray900,
          ),
        ),
        SizedBox(
          height: 6,
        ),
        TextField(
          style: AppTextStyles.labelHint,
          decoration: InputDecoration(
            hintText: "Laranja",
            hintStyle: AppTextStyles.h4.copyWith(
              color: AppColors.gray400,
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: AppColors.gray200,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
