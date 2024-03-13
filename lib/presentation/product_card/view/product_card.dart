import 'package:cached_network_image/cached_network_image.dart';
import 'package:fakestore_api/model/product_model.dart';
import 'package:fakestore_api/presentation/cart_screen/controller/cart_controller.dart';
//import 'package:fakestore_api/presentation/cart_screen/controller/cart_controller.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductCard extends StatefulWidget {
  final Product product;

  ProductCard({required this.product});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    var product = CartProvider().cartItems;
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: CachedNetworkImage(
                imageUrl: widget.product.image,
                fit: BoxFit.cover,
              ),
            ),
            ListTile(
              title: Text(widget.product.title),
              subtitle: Text('${widget.product.price} \$'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.star, color: Colors.orange),
                  Text('${widget.product.rating}'),
                ],
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Provider.of<CartProvider>(context, listen: false)
                      .addProduct(widget.product);
                },
                child: Text("Add to Cart")),
          ],
        ),
      ),
    );
  }
}
