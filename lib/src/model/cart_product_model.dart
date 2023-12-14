import 'package:cloud_firestore/cloud_firestore.dart';

import 'product_model.dart';
import 'package:scoped_model/scoped_model.dart';

import 'user_model.dart';

class CartProduct {
  String cid;

  int quantity;
  String pid;

  Product product;

  CartProduct(this.cid, this.quantity, this.pid, this.product);
}

class CartModel extends Model {
  UserModel user;

  List<CartProduct> products = [];

  CartModel(this.user);

  void addCardItem(CartProduct cartProduct) {
    final dataProduct = {
      'quantity': cartProduct.quantity,
      'pid': cartProduct.pid,
      'product': cartProduct.product,
    };

    products.add(cartProduct);

    FirebaseFirestore.instance
        .collection("users")
        .doc(user.uid)
        .collection("cart")
        .add(dataProduct)
        .then((value) {
      cartProduct.cid = value.id;
    });

    notifyListeners();
  }

  void removeCartItem(CartProduct cartProduct) {}
}
