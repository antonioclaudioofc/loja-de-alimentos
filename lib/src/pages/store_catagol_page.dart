import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../components/cards/food_item_card.dart';
import '../style/exports.dart';

class StoreCatagolPage extends StatelessWidget {
  const StoreCatagolPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.green400,
        title: Text(
          "Catalogo de produtos",
          style: AppTextStyles.h3.copyWith(
            color: AppColors.gray50,
          ),
        ),
      ),
      body: SafeArea(
        child: StaggeredGrid.count(
          crossAxisCount: 4,
          mainAxisSpacing: 12,
          crossAxisSpacing: 12,
          children: const [
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 2,
              child: FoodItemCard(
                nameProduct: "Abacate",
                price: 6,
                quantityProduct: 12,
                urlImage: "assets/images/abacate.png",
                details:
                    "O abacate é uma fruta incrivelmente versátil e deliciosa, conhecida por sua textura cremosa e sabor suave",
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 2,
              child: FoodItemCard(
                nameProduct: "Abacate",
                price: 6,
                quantityProduct: 12,
                urlImage: "assets/images/abacate.png",
                details:
                    "O abacate é uma fruta incrivelmente versátil e deliciosa, conhecida por sua textura cremosa e sabor suave",
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 2,
              child: FoodItemCard(
                nameProduct: "Abacate",
                price: 6,
                quantityProduct: 12,
                urlImage: "assets/images/abacate.png",
                details:
                    "O abacate é uma fruta incrivelmente versátil e deliciosa, conhecida por sua textura cremosa e sabor suave",
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 2,
              child: FoodItemCard(
                nameProduct: "Abacate",
                price: 6,
                quantityProduct: 12,
                urlImage: "assets/images/abacate.png",
                details:
                    "O abacate é uma fruta incrivelmente versátil e deliciosa, conhecida por sua textura cremosa e sabor suave",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
