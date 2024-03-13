import 'package:fakestore_api/model/product_model.dart';
import 'package:flutter/material.dart';

class CartProvider with ChangeNotifier {
  List<Product> _cartItems = [];
  List<Product> get cartItems => _cartItems;

  void addProduct(Product product) {
    _cartItems.add(product);
    notifyListeners();
  }
}
