import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopifyy/controllers/cart_controller.dart';
import 'package:shopifyy/reusable_components/prodTile.dart';

class Cart extends StatelessWidget {
  CartController cartController = Get.find<CartController>();
  Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back_ios_new_rounded),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('SubTotal',
                        style: TextStyle(
                          fontSize: 25.0,
                        )),
                    Text('\$ ${cartController.totalPrice.toStringAsFixed(3)}',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25.0,
                        )),
                  ],
                ),
              ),
              Text(
                'Cart (${cartController.count})',
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Expanded(
                  child: ListView.builder(
                      itemCount: 1,
                      itemBuilder: (context, index) {
                        return GetX<CartController>(builder: (controller) {
                          return Wrap(
                            direction: Axis.vertical,
                            alignment: WrapAlignment.start,
                            children: List.generate(controller.cartItems.length,
                                (index) {
                              return Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      //width: 150.0,
                                      height: 250.0,
                                      color: Colors.white,
                                      child: CartProdTile(
                                        index: index,
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            }),
                          );
                        });
                      })),
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 13, 221, 169)),
                  onPressed: () {},
                  child: Text(
                    'Check Out',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 35.0,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
