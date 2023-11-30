import 'package:carrot_feirinha/src/components/buttons/custom_button.dart';
import 'package:carrot_feirinha/src/components/inputs/common_input.dart';
import 'package:carrot_feirinha/src/components/inputs/price_quantity_input_row.dart';
import 'package:carrot_feirinha/src/components/inputs/product_category_input.dart';
import 'package:flutter/material.dart';

import '../../app/app.dart';
import '../../components/inputs/product_imagem_input.dart';

class FormProductPage extends StatefulWidget {
  const FormProductPage({super.key});

  @override
  State<FormProductPage> createState() => _FormProductPageState();
}

class _FormProductPageState extends State<FormProductPage> {
  final _controllerProductName = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(
          top: 40,
          bottom: 16,
          left: 24,
          right: 24,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Expanded(
                  child: Text(
                    "Produto",
                    style: AppTextStyles.h3,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      PagePaths.navigationPath,
                    );
                  },
                  icon: Icon(Icons.close),
                ),
              ],
            ),
            const SizedBox(
              height: 64,
            ),
            const ProductImageInput(),
            CommonInput(
              controller: _controllerProductName,
              label: "Nome",
              hintText: "Ex: Laranja",
            ),
            const ProductCategoryInput(),
            const PriceQuantityInputRow(),
            const SizedBox(
              height: 24,
            ),
            CustomButton(
              label: "Adicionar",
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
