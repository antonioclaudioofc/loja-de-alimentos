import 'package:carrot_feirinha/src/app/app.dart';
import 'package:flutter/material.dart';

class QuantityCounterInput extends StatefulWidget {
  const QuantityCounterInput({super.key});

  @override
  State<QuantityCounterInput> createState() => _QuantityCounterInputState();
}

class _QuantityCounterInputState extends State<QuantityCounterInput> {
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
                onPressed: () {},
              ),
              const Text("1"),
              IconButton(
                onPressed: () {},
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
