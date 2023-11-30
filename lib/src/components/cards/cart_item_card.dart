import 'package:carrot_feirinha/src/app/app.dart';
import 'package:flutter/material.dart';

class CartItemCard extends StatefulWidget {
  const CartItemCard({super.key});

  @override
  State<CartItemCard> createState() => _CartItemCardState();
}

class _CartItemCardState extends State<CartItemCard> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Row(
        children: [
          Image.asset(
            "assets/images/cenoura.png",
            width: 60,
            height: 60,
            fit: BoxFit.fitWidth,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Cenoura",
                style: AppTextStyles.h4.copyWith(
                  color: AppColors.black,
                ),
              ),
              Text(
                "1 unid, preço",
                style: AppTextStyles.h4.copyWith(
                  color: AppColors.gray500,
                ),
              ),
            ],
          ),
          Expanded(
            child: Row(
              children: [
                Container(
                  width: 30,
                  height: 30,
                  decoration: ShapeDecoration(
                    color: AppColors.gray50,
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                        width: 1,
                        color: AppColors.gray200,
                      ),
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  child: Center(
                    child: InkWell(
                      onTap: () {},
                      child: const Icon(Icons.add),
                    ),
                  ),
                ),
                Expanded(
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintStyle: AppTextStyles.h4.copyWith(
                        color: AppColors.black,
                      ),
                      hintText: '2',
                      border: InputBorder.none,
                      filled: true,
                      fillColor: AppColors.gray50,
                      contentPadding: const EdgeInsets.all(2.0),
                    ),
                  ),
                ),
                Container(
                  width: 30,
                  height: 30,
                  decoration: ShapeDecoration(
                    color: AppColors.gray50,
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                        width: 1,
                        color: AppColors.gray200,
                      ),
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  child: Center(
                    child: InkWell(
                      onTap: () {},
                      child: const Icon(Icons.remove),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Icon(Icons.close),
              Text(
                "R\$ 1,50",
                style: AppTextStyles.h4.copyWith(
                  color: AppColors.black,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
