import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopifyy/controllers/cart_controller.dart';
import 'package:shopifyy/controllers/products_controller.dart';
import 'package:shopifyy/screens/cart.dart';

class CartButton extends StatelessWidget {
  CartController cartController = Get.put(CartController());
  final double size;
  CartButton({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: () {
          Get.to(() => Cart());
        },
        child: Row(
          children: [
            Icon(
              Icons.shopify_outlined,
              size: size,
            ),
            GetX<CartController>(builder: (CartController) {
              return Text(cartController.count.toString(),
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.red,
                  ));
            }),
          ],
        ),
      ),
    );
  }
}

class LikeButton extends StatelessWidget {
  final IconData icon;
  final double size;
  final Function() func;

  LikeButton(
      {super.key, required this.icon, required this.size, required this.func});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: IconButton(
        onPressed: func,
        icon: Icon(
          icon,
          size: size,
          //fill: ,
          color: Colors.red,
        ),
      ),
    );
  }
}

class AddToCartButton extends StatefulWidget {
  final String id;
  AddToCartButton({super.key, required this.id});

  @override
  State<AddToCartButton> createState() => _AddToCartButtonState();
}

class _AddToCartButtonState extends State<AddToCartButton> {
  CartController cartController = Get.find<CartController>();
  ProductController controller = Get.find<ProductController>();

  bool isAdded = false;

  @override
  Widget build(BuildContext context) {
    return !isAdded
        ? Container(
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  isAdded = true;
                });
                cartController.addToCart(controller.products
                    .firstWhere((product) => product.id == widget.id));
              },
              child: Text("Add To Cart"),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 76, 78, 78)),
            ),
          )
        : ItemIncrement();
  }
}

class ItemIncrement extends StatelessWidget {
  const ItemIncrement({super.key});
  static int quantity = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ItemCountermgt(icon: (Icons.remove)),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: SizedBox(
              width: 20.0,
              child: Center(
                child: Text(quantity.toString()),
              ),
            ),
          ),
          ItemCountermgt(
            icon: (Icons.add),
          ),
        ],
      ),
    );
  }
}

class ItemCountermgt extends StatelessWidget {
  final IconData icon;
  ItemCountermgt({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Color.fromARGB(255, 122, 235, 182),
      ),
      width: 45.0,
      child: SizedBox(
        height: 40.0,
        child: IconButton(onPressed: () {}, icon: Icon(icon)),
      ),
    );
  }
}
