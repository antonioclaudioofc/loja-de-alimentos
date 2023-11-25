import 'package:carrot_feirinha/src/app/app.dart';
import 'package:carrot_feirinha/src/app/app_text_styles.dart';
import 'package:flutter/material.dart';

class InputQuantity extends StatefulWidget {
  const InputQuantity({super.key});

  @override
  State<InputQuantity> createState() => _InputQuantityState();
}

class _InputQuantityState extends State<InputQuantity> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Quantidade",
          style: AppTextStyles.labelInput.copyWith(
            color: AppColors.gray900,
          ),
        ),
        SizedBox(
          height: 6,
        ),
        TextField(
          keyboardType: TextInputType.numberWithOptions(
            decimal: false,
          ),
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.add),
            suffixIcon: Icon(Icons.remove),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
            ),
          ),
        )
      ],
    );
  }
}
