import 'package:flutter/material.dart';

import '../../style/app_colors.dart';
import '../../style/app_text_styles.dart';
import '../../components/buttons/custom_button.dart';
import '../../components/cards/cart_item_card.dart';

class MyCartPage extends StatelessWidget {
  const MyCartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          const Text(
            "Meu Carrinho",
            style: AppTextStyles.h3,
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
            ),
            child: Column(
              children: [
                const CartItemCard(),
                const Divider(
                  color: AppColors.gray200,
                ),
                const CartItemCard(),
                const Divider(
                  color: AppColors.gray200,
                ),
                const CartItemCard(),
                const Divider(
                  color: AppColors.gray200,
                ),
                CustomButton(
                  label: "Finalizar",
                  onTap: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
