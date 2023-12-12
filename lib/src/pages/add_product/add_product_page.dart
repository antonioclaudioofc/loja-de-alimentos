import 'package:carrot_feirinha/src/model/product_model.dart';
import 'package:carrot_feirinha/src/style/exports.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

import '../../components/cards/editable_item_card.dart';

class AddProductPage extends StatefulWidget {
  const AddProductPage({Key? key}) : super(key: key);

  @override
  State<AddProductPage> createState() => _AddProductPageState();
}

class _AddProductPageState extends State<AddProductPage> {
  List<Product> products = [];

  @override
  void initState() {
    super.initState();
    _loadProducts();
  }

  Future<void> _loadProducts() async {
    try {
      List<Product> loadedProducts =
          await ScopedModel.of<ProductModel>(context).loadProducts();
      setState(() {
        products = loadedProducts;
        print("Produtos: $products");
      });
    } catch (error) {
      setState(() {
        products = [];
        print("Erro ao carregar produtos: $error");
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          vertical: 40,
        ),
        child: Column(
          children: [
            // Expanded(
            //   child: GridView.count(
            //     crossAxisCount: 2,
            //     childAspectRatio: 0.71,
            //     children: List.generate(products.length, (index) {
            //       return EditableItemCard(
            //         nameProduct: products[index].name,
            //         price: products[index].price,
            //         quantityProduct: products[index].quantityProduct,
            //         urlImage: products[index].img,
            //       );
            //     }),
            //   ),
            // ),
            StaggeredGrid.count(
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
