import 'package:carrot_feirinha/src/style/exports.dart';
import 'package:flutter/material.dart';

class QuantityCounterInput extends StatefulWidget {
  const QuantityCounterInput({
    Key? key,
    required this.quantityProduct,
    required this.onSelectQuantity,
  }) : super(key: key);

  final num quantityProduct;
  final Function(num) onSelectQuantity;

  @override
  State<QuantityCounterInput> createState() => _QuantityCounterInputState();
}

class _QuantityCounterInputState extends State<QuantityCounterInput> {
  int quantityProduct = 1;

  void onIncremente() {
    setState(() {
      if (quantityProduct <= 9) quantityProduct++;
      widget.onSelectQuantity(quantityProduct);
    });
  }

  void onDecrement() {
    setState(() {
      if (quantityProduct >= 2) quantityProduct--;
      widget.onSelectQuantity(quantityProduct);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
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
              Text(quantityProduct.toString()),
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
    );
  }
}
