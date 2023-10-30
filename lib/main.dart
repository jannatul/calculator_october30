
import 'package:flutter/material.dart';
import 'item_detail.dart';

import 'product.dart';
import 'display_Item.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  MyHomePage(title: 'Product layout demo home page'),
    );
  }
}
class MyHomePage extends StatelessWidget {
  MyHomePage({super.key, required String title});
List<Product> myProductList =[Product(title: 'Nokia', description: 'My first phone', price: '2000'),
  Product(title: 'Blackberry', description: 'My SECOND phone', price: '50000'),
  Product(title: 'IPHONE', description: 'My THIRD phone', price: '100000'),
];

void myFunction(Product product, BuildContext context){

Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => ItemDetailPage(detailProduct: product),
  ),
);
}

  // This widget is the root of your adpplication.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('JANNATUL FEDAUSH'),),
      body:  ListView(
          children: [
            DisplayItem(displayProduct: Product(title: 'Nokia', description: 'My first phone', price: '2000'), onItemSelected: myFunction),
            DisplayItem(displayProduct: Product(title: 'Nokia', description: 'My first phone', price: '2000'), onItemSelected: myFunction),
            DisplayItem(displayProduct: Product(title: 'Nokia', description: 'My first phone', price: '2000'), onItemSelected: myFunction)


          ]
      )     ,

      );
    
  }
}
