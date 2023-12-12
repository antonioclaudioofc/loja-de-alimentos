import 'package:carrot_feirinha/src/components/inputs/common_input.dart';
import 'package:carrot_feirinha/src/components/inputs/quantity_counter_input.dart';
import 'package:flutter/material.dart';

import '../../style/app_colors.dart';
import '../../style/app_text_styles.dart';

class PriceQuantityInputRow extends StatefulWidget {
  const PriceQuantityInputRow(
      {Key? key,
      required this.quantityProduct,
      required this.onSelectQuantity,
      required this.controllerProductPrice})
      : super(key: key);

  final int quantityProduct;
  final Function(int) onSelectQuantity;
  final TextEditingController controllerProductPrice;

  @override
  State<PriceQuantityInputRow> createState() => _PriceQuantityInputRowState();
}

class _PriceQuantityInputRowState extends State<PriceQuantityInputRow> {
  int quantity = 1;

  void onIncremente() {
    setState(() {
      if (quantity <= 9) quantity++;
      widget.onSelectQuantity(quantity);
    });
  }

  void onDecrement() {
    setState(() {
      if (quantity >= 2) quantity--;
      widget.onSelectQuantity(quantity);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 12,
      ),
      child: Row(
        children: [
          Expanded(
            child: CommonInput(
              controller: widget.controllerProductPrice,
              label: "Preço Unitário",
              hintText: "6,00",
              prefixText: "R\$",
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Quantidade",
                  style: AppTextStyles.h4.copyWith(
                    color: AppColors.gray900,
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                Container(
                  width: double.infinity,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                        width: 1,
                        color: AppColors.gray200,
                      ),
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: const Icon(
                          Icons.add,
                          color: AppColors.green300,
                        ),
                        onPressed: onIncremente,
                      ),
                      Text(quantity.toString()),
                      IconButton(
                        onPressed: onDecrement,
                        icon: const Icon(
                          Icons.remove,
                          color: AppColors.gray400,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
