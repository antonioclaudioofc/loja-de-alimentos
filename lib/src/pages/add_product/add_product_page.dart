import 'package:carrot_feirinha/src/style/exports.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
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
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          vertical: 40,
        ),
        child: StaggeredGrid.count(
          crossAxisCount: 4,
          mainAxisSpacing: 2,
          crossAxisSpacing: 2,
          children: const [
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 2,
              child: EditableItemCard(
                urlImage: "assets/images/abacate.png",
                price: 12,
                nameProduct: "Abacate",
                quantityProduct: 22,
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 2,
              child: EditableItemCard(
                urlImage: "assets/images/abacate.png",
                price: 12,
                nameProduct: "Abacate",
                quantityProduct: 22,
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 2,
              child: EditableItemCard(
                urlImage: "assets/images/abacate.png",
                price: 12,
                nameProduct: "Abacate",
                quantityProduct: 22,
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 2,
              child: EditableItemCard(
                urlImage: "assets/images/abacate.png",
                price: 12,
                nameProduct: "Abacate",
                quantityProduct: 22,
              ),
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
