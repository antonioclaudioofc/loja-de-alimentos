import 'package:carrot_feirinha/src/components/buttons/custom_button.dart';
import 'package:carrot_feirinha/src/components/inputs/common_input.dart';
import 'package:carrot_feirinha/src/components/inputs/price_quantity_input_row.dart';
import 'package:carrot_feirinha/src/components/inputs/product_category_input.dart';
import 'package:carrot_feirinha/src/model/product_model.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

import '../../style/exports.dart';
import '../../components/inputs/product_imagem_input.dart';

class FormProductPage extends StatefulWidget {
  const FormProductPage({super.key});

  @override
  State<FormProductPage> createState() => _FormProductPageState();
}

class _FormProductPageState extends State<FormProductPage> {
  final _controllerProductName = TextEditingController();
  final _controllerProductQuantity = TextEditingController();
  final _controllerProductPrice = TextEditingController();
  String urlImgProduct = '';
  String productCategory = '';
  int quantityProduct = 1;

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
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Text(
                    "Produto",
                    style: AppTextStyles.h3.copyWith(
                      fontWeight: FontWeight.w700,
                      // backgroundColor: AppColors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.close,
                    color: AppColors.orange500,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 64,
            ),
            ProductImageInput(
              urlImgProduct: urlImgProduct,
              onImageSelected: (imageUrl) {
                setState(() {
                  urlImgProduct = imageUrl;
                });
              },
            ),
            CommonInput(
              controller: _controllerProductName,
              label: "Nome",
              hintText: "Ex: Laranja",
            ),
            ProductCategoryInput(
              productCategory: productCategory,
              onSelectCategory: (nameCategory) {
                setState(() {
                  productCategory = nameCategory;
                });
              },
            ),
            PriceQuantityInputRow(
              controllerProductPrice: _controllerProductPrice,
              quantityProduct: quantityProduct,
              onSelectQuantity: (quantity) {
                setState(() {
                  quantityProduct = quantity;
                });
              },
            ),
            const SizedBox(
              height: 24,
            ),
            CustomButton(
              label: "Adicionar",
              onTap: () {
                if (urlImgProduct != '') {
                  Product product = Product(
                      _controllerProductName.text,
                      urlImgProduct,
                      double.parse(_controllerProductPrice.text),
                      quantityProduct,
                      "description",
                      productCategory);
                  // Product sd = Product(name, img, price, description, category)
                  ScopedModel.of<ProductModel>(context)
                      .AddProduct(context, product);
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
