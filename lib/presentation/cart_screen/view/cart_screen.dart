//import 'package:cached_network_image/cached_network_image.dart';
import 'package:fakestore_api/presentation/cart_screen/controller/cart_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
//import 'package:fakestore_api/model/product_model.dart';

class CartScreen extends StatefulWidget {
  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    var cartProvider = Provider.of<CartProvider>(context);
    return Scaffold(
        appBar: AppBar(
          title: Text("Cart Screen"),
        ),
        body: ListView.builder(
            itemCount: cartProvider.products.length,
            itemBuilder: (context, index) {
              var product = cartProvider.products[index];
              return ListTile(
                title: Text(product.title),
                subtitle: Text('Price:\$${product.price}'),
              );
            }));
  }
}
