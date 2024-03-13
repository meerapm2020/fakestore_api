import 'package:fakestore_api/model/product_model.dart';
import 'package:flutter/material.dart';

class CartProvider with ChangeNotifier {
  List<Product> products = [];

  void addProduct(Product product) {
    products.add(product);
    notifyListeners();
  }
}
