import 'package:carrot_feirinha/src/shared/components/input_price.dart';
import 'package:carrot_feirinha/src/shared/components/input_quantity.dart';
import 'package:flutter/material.dart';

class MultipleInputs extends StatefulWidget {
  const MultipleInputs({super.key});

  @override
  State<MultipleInputs> createState() => _MultipleInputsState();
}

class _MultipleInputsState extends State<MultipleInputs> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 12,
      ),
      child: Row(
        children: [
          Expanded(
            child: InputPrice(),
          ),
          SizedBox(
            width: 12,
          ),
          Expanded(
            child: InputQuantity(),
          ),
        ],
      ),
    );
  }
}
