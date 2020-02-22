import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mcart/home/widgets/ProductCard.dart';
import 'package:mcart/model/product.dart';

class SearchPage extends StatelessWidget {

  List<Product> products = new List();
  SearchPage(){
      products.add(Product('Strawberry', 5 ,'', 10));
      products.add(Product('bananas', 5 ,'', 10));
      products.add(Product('Strawberry', 5 ,'', 10));
      products.add(Product('Strawberry', 5 ,'', 10));
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection:  Axis.vertical,
      shrinkWrap: true,
      itemCount: products.length,
        itemBuilder: (context,position){
          return ProductCard(products[position]);
    });
  }
}
