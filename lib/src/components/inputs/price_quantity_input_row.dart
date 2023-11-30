import 'package:carrot_feirinha/src/components/inputs/common_input.dart';
import 'package:carrot_feirinha/src/components/inputs/quantity_counter_input.dart';
import 'package:flutter/material.dart';

class PriceQuantityInputRow extends StatefulWidget {
  const PriceQuantityInputRow({super.key});

  @override
  State<PriceQuantityInputRow> createState() => _PriceQuantityInputRowState();
}

class _PriceQuantityInputRowState extends State<PriceQuantityInputRow> {
  final _controllerPrice = TextEditingController();

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
              controller: _controllerPrice,
              label: "Preço Unitário",
              hintText: "6,00",
              prefixText: "R\$",
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          const Expanded(
            child: QuantityCounterInput(),
          ),
        ],
      ),
    );
  }
}
