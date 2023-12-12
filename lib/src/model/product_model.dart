import 'package:carrot_feirinha/src/style/app_colors.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class Product {
  String name;
  String img;
  double price;
  int quantityProduct;
  String description;
  String category;

  Product(this.name, this.img, this.price, this.quantityProduct,
      this.description, this.category);
}

class ProductModel extends Model {
  List<Product> products = [];

  static ProductModel of(BuildContext context) =>
      ScopedModel.of<ProductModel>(context);

  Future<void> AddProduct(BuildContext context, Product product) async {
    final dataProduct = {
      'name': product.name,
      'price': product.price,
      'quantity': product.quantityProduct,
      'img': product.img,
      'description': product.description,
      'category': product.category,
    };

    try {
      await FirebaseFirestore.instance
          .collection("products")
          .doc()
          .set(dataProduct);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Produto cadastrado com sucesso!'),
          backgroundColor: AppColors.green400,
        ),
      );
      notifyListeners();
      Navigator.pop(context);
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Houve um erro inesperado!'),
          backgroundColor: AppColors.red500,
        ),
      );
    }
  }

  Future<void> loadProducts() async {
    CollectionReference recordsRef =
        FirebaseFirestore.instance.collection('products');

    try {
      QuerySnapshot snapshot = await recordsRef.get();
      products = snapshot.docs
          .map((doc) => Product(
                doc['name'],
                doc['img'],
                doc['price'],
                doc['quantity'] ?? 0,
                doc['description'] ?? '',
                doc['category'] ?? '',
              ))
          .toList();
      notifyListeners();
    } catch (e) {
      print("Erro ao carregar produtos: $e");
    }
  }
}
