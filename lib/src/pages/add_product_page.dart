import 'package:carrot_feirinha/src/model/product_model.dart';
import 'package:carrot_feirinha/src/style/exports.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

import '../components/cards/editable_item_card.dart';

class AddProductPage extends StatefulWidget {
  const AddProductPage({Key? key}) : super(key: key);

  @override
  State<AddProductPage> createState() => _AddProductPageState();
}

class _AddProductPageState extends State<AddProductPage> {
  Future<void>? _loadingProducts;

  @override
  void initState() {
    super.initState();
    _loadingProducts = _loadProducts();
  }

  Future<void> _loadProducts() async {
    try {
      await ScopedModel.of<ProductModel>(context).loadProducts();
      setState(() {
        print("Produtos: ${ScopedModel.of<ProductModel>(context).products}");
      });
    } catch (error) {
      setState(() {
        print("Erro ao carregar produtos: $error");
      });
    }
  }

  Future<void> _refreshProducts() async {
    await _loadProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: RefreshIndicator(
          onRefresh: _refreshProducts,
          child: CustomScrollView(
            slivers: [
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    return ScopedModelDescendant<ProductModel>(
                      builder: (context, child, model) {
                        return EditableItemCard(
                          urlImage: model.products[index].img,
                          price: model.products[index].price,
                          nameProduct: model.products[index].name,
                          quantityProduct:
                              model.products[index].quantityProduct,
                        );
                      },
                    );
                  },
                  childCount:
                      ScopedModel.of<ProductModel>(context).products.length,
                ),
              ),
            ],
          ),
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
