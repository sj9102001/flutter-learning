import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/products.dart';

class ProductDetailScreen extends StatelessWidget {
  static const routeName = '/product-screen';
  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context).settings.arguments as String;
    final loadedProduct =
        Provider.of<Products>(context, listen: false).findById(productId);
    print(loadedProduct);
    return Scaffold(
      appBar: AppBar(),
    );
  }
}
