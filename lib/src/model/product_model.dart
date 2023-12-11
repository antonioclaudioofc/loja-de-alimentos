import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class Product {
  String name;
  String img;
  num price;
  String description;
  String category;

  Product(this.name, this.img, this.price, this.description, this.category);
}

class ProductModel extends Model {
  List<Product> products = [];

  static ProductModel of(BuildContext context) =>
      ScopedModel.of<ProductModel>(context);

  Future<void> AddProduct(Product product) async {
    final dataProduct = {
      'name': product.name,
      'price': product.price,
      'img': product.img,
      'description': product.description,
      'category': product.category,
    };

    await FirebaseFirestore.instance
        .collection("products")
        .doc()
        .set(dataProduct);

    notifyListeners();
  }
}
