import 'package:carrot_feirinha/src/style/exports.dart';
import 'package:flutter/material.dart';

import '../../components/cards/editable_item_card.dart';

class AddProductPage extends StatefulWidget {
  const AddProductPage({Key? key}) : super(key: key);

  @override
  State<AddProductPage> createState() => _AddProductPageState();
}

class _AddProductPageState extends State<AddProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          vertical: 40,
        ),
        child: Wrap(
          spacing: 4,
          runSpacing: 10,
          children: [
            EditableItemCard(
              urlImage: "assets/images/abacate.png",
              price: 12,
              nameProduct: "Abacate",
              quantityProduct: 22,
            ),
            EditableItemCard(
              urlImage: "assets/images/abacate.png",
              price: 12,
              nameProduct: "Abacate",
              quantityProduct: 22,
            ),
            EditableItemCard(
              urlImage: "assets/images/abacate.png",
              price: 12,
              nameProduct: "Abacate",
              quantityProduct: 22,
            ),
            EditableItemCard(
              urlImage: "assets/images/abacate.png",
              price: 12,
              nameProduct: "Abacate",
              quantityProduct: 22,
            ),
          ],
        ),
      ),
      floatingActionButton: SizedBox(
        width: 124,
        height: 44,
        child: InkWell(
          onTap: () {
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
                  const Icon(
                    Icons.add,
                    color: AppColors.gray50,
                  ),
                  const SizedBox(width: 8),
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
