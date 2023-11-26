import 'package:carrot_feirinha/src/app/app_colors.dart';
import 'package:carrot_feirinha/src/app/app_text_styles.dart';
import 'package:carrot_feirinha/src/shared/components/custom_button.dart';
import 'package:carrot_feirinha/src/shared/components/item_cart.dart';
import 'package:flutter/material.dart';

class MyCartPage extends StatelessWidget {
  const MyCartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Text(
            "Meu Carrinho",
            style: AppTextStyles.h3,
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
            ),
            child: Column(
              children: [
                ItemCart(),
                Divider(
                  color: AppColors.gray200,
                ),
                ItemCart(),
                Divider(
                  color: AppColors.gray200,
                ),
                ItemCart(),
                Divider(
                  color: AppColors.gray200,
                ),
                CustomButton(
                  onPressed: () {},
                  label: "Finalizar",
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
