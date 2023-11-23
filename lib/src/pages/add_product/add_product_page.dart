import 'package:carrot_feirinha/src/app/app.dart';
import 'package:carrot_feirinha/src/shared/components/update_product.dart';
import 'package:flutter/material.dart';

class AddProductPage extends StatefulWidget {
  const AddProductPage({Key? key}) : super(key: key);

  @override
  State<AddProductPage> createState() => _AddProductPageState();
}

class _AddProductPageState extends State<AddProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          vertical: 40,
          horizontal: 16,
        ),
        child: Wrap(
          spacing: 4,
          runSpacing: 10,
          children: [
            UpdateProduct(
              urlImage: "assets/images/abacate.png",
              price: 12,
              nameProduct: "Abacate",
              quantityProduct: 22,
            ),
            UpdateProduct(
              urlImage: "assets/images/abacate.png",
              price: 12,
              nameProduct: "Abacate",
              quantityProduct: 22,
            ),
            UpdateProduct(
              urlImage: "assets/images/abacate.png",
              price: 12,
              nameProduct: "Abacate",
              quantityProduct: 22,
            ),
            UpdateProduct(
              urlImage: "assets/images/abacate.png",
              price: 12,
              nameProduct: "Abacate",
              quantityProduct: 22,
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        width: 124,
        height: 44,
        child: InkWell(
          onTap: () {
            print("Deveria ir");
            Navigator.pushNamed(
              context,
              PagePaths.formProduct,
            );
          },
          child: Material(
            color: AppColors.green300,
            borderRadius: BorderRadius.circular(8),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.add,
                    color: AppColors.gray50,
                  ),
                  SizedBox(width: 8),
                  Text(
                    "Adicionar",
                    style: AppTextStyles.h4.copyWith(
                      color: AppColors.gray50,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
