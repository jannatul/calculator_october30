import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'product.dart';


class DisplayItem extends StatelessWidget{
  Product displayProduct;
  Function(Product, BuildContext ) onItemSelected;
  DisplayItem({super.key, required this.displayProduct, required this.onItemSelected});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        onItemSelected(displayProduct, context);
      },

      child: Card(
        child: Column(
          children: [
            Text('Product Title: ${displayProduct.title}'),
            Text('Product Description: ${displayProduct.description}'),
            Text('Product PRICE: ${displayProduct.price}'),
          ],),
      ),
    );


  }


}