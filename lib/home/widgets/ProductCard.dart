import 'package:flutter/material.dart';
import 'package:mcart/model/product.dart';

class ProductCard extends StatelessWidget {

  Product prouct;

  ProductCard(this.prouct);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.network(prouct.imageAddress),
        ],
      ),
    );
  }
}
