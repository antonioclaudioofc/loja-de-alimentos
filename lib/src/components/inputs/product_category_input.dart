import 'package:carrot_feirinha/src/app/app.dart';
import 'package:flutter/material.dart';

class ProductCategoryInput extends StatefulWidget {
  const ProductCategoryInput({Key? key}) : super(key: key);

  @override
  State<ProductCategoryInput> createState() => _ProductCategoryInputState();
}

class _ProductCategoryInputState extends State<ProductCategoryInput> {
  List<String> list = <String>[
    '- Selecione a classificação -',
    'Frutas',
    'Bebidas',
    'Legumes',
    'Carne'
  ];
  
  String _selectedOption = '- Selecione a classificação -';

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const SizedBox(
        height: 12,
      ),
      Text(
        "Classificação",
        style: AppTextStyles.h4.copyWith(
          color: AppColors.gray900,
        ),
      ),
      const SizedBox(
        height: 6,
      ),
      SizedBox(
        width: double.infinity,
        child: DropdownButtonFormField<String>(
          isExpanded: true,
          icon: const Icon(
            Icons.arrow_drop_down,
          ),
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderSide: const BorderSide(
                color: AppColors.gray200,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(4),
            ),
            filled: true,
            fillColor: AppColors.gray200,
          ),
          value: (_selectedOption.isEmpty) ? null : _selectedOption,
          onChanged: (item) {
            setState(() {
              _selectedOption = item!;
            });
          },
          items: list.map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Center(
                child: Text(value),
              ),
            );
          }).toList(),
        ),
      ),
    ]);
  }
}
