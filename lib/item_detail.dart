import 'package:flutter/material.dart';

import 'product.dart';
class ItemDetailPage extends StatelessWidget{
  Product detailProduct;
  ItemDetailPage({super.key, required this.detailProduct});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: const Text('detail page'),),
     body: Column(
       children: [Text('Product Title: ${detailProduct.title}'),
         Text('Product Description: ${detailProduct.description}'),
         Text('Product PRICE: ${detailProduct.price}'),



       ],
     ),
   );
  }


}