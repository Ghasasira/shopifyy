import 'package:get/get.dart';
import 'dart:math' as math;
import '../models/products.dart';

class CartController extends GetxController {
  RxList<Product> cartItems = <Product>[].obs;
  double get totalPrice => cartItems.fold(0, (sum, item) => sum + item.price);
  int get count => cartItems.length;

  addToCart(Product product) {
    cartItems.add(product);
    print('............done.................');
    print(count);
  }
}
