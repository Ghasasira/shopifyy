import 'package:flutter/material.dart';
import 'package:shopifyy/reusable_components/productsDisplay.dart';
import 'package:shopifyy/reusable_components/productsTopBars.dart';

class ProductsPage extends StatelessWidget {
  static String products = 'products';
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        child: Column(
          children: [
            TopBarsProd(),
            ProDisplay(),
          ],
        ),
      ),
    );
  }
}
