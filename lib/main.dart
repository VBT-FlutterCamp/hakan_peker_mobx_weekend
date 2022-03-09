import 'package:flutter/material.dart';
import 'package:flutter_mobx_weekend/feature/productList/view/product_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: ProductView()
    );
  }
}