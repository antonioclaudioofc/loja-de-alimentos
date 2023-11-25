import 'package:carrot_feirinha/src/app/app.dart';
import 'package:carrot_feirinha/src/app/app_text_styles.dart';
import 'package:flutter/material.dart';

class InputPrice extends StatelessWidget {
  const InputPrice({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Preço Unitário",
          style: AppTextStyles.labelInput.copyWith(
            color: AppColors.gray900,
          ),
        ),
        SizedBox(
          height: 6,
        ),
        TextField(
          keyboardType: TextInputType.numberWithOptions(
            decimal: true,
          ),
          decoration: InputDecoration(
            prefixText: 'R\$ ',
            prefixStyle: TextStyle(
              color: AppColors.gray800,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
            ),
          ),
        )
      ],
    );
  }
}
