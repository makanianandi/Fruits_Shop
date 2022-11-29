import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'Product.dart';

class ProductDetails extends StatelessWidget {

  const ProductDetails({Key? key, required this.product}) : super(key: key);

  final Product product;

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Product Details"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(12),
          child: Text(product.description),
        )
    );
  }
}