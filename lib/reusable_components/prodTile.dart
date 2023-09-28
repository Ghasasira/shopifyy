import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopifyy/controllers/products_controller.dart';
import 'package:shopifyy/screens/singleItem.dart';

import '../controllers/cart_controller.dart';
import 'cartButton.dart';

class ProdTile extends StatelessWidget {
  final int index;
  ProductController controller = Get.find<ProductController>();
  ProdTile({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return GetX<ProductController>(builder: (controller) {
      return Column(
        children: [
          GestureDetector(
            onTap: () {
              var productId = controller.products.value[index].id;
              Get.to(
                () => const ItemScreen(),
                arguments: productId,
              );
              print(productId);
              //var productInfo=controller.fetchSpecificItem(controller.products.value[index].id);
            },
            child: SizedBox(
              height: 100.0,
              child: Image.asset('images/product1.jpg'),
            ),
          ),
          Text(
            controller.products.value[index].prodName,
            style: TextStyle(fontSize: 18.0),
          ),
          Row(
            children: [
              LikeButton(
                icon: (Icons.favorite),
                size: 20.0,
                func: () {
                  //like();
                  print('Liked');
                },
              ),
              SizedBox(
                width: 10.0,
              ),
              // IconButton(
              //   onPressed: () {},
              //   iconSize: 18.0,
              //   icon: Icon(Icons.favorite),
              // ),
              Text(
                '\$ ${controller.products.value[index].price}'.toString(),
                style: TextStyle(
                  color: Color.fromARGB(255, 122, 235, 182),
                  fontSize: 18.0,
                ),
              ),
            ],
          ),
          AddToCartButton(id: controller.products.value[index].id)
        ],
      );
    });
  }
}

class CategorisedProdTile extends StatelessWidget {
  final int index;
  ProductController controller = Get.find<ProductController>();
  CategorisedProdTile({super.key, required this.index});

  // fetchItems(cat)async {
  //   var categoryProducts=awaitcontroller.fetchItemsOfCategory(cat);

  // }

  @override
  Widget build(BuildContext context) {
    return GetX<ProductController>(builder: (controller) {
      return Column(
        children: [
          GestureDetector(
            onTap: () {
              var productId = controller.products.value[index].id;
              Get.to(
                () => const ItemScreen(),
                arguments: productId,
              );
              var catItem = controller.categorisedProducts.value[0];
              var Item = controller.products.value;

              print('*****************************************');
              print(catItem);
              print(Item);
              print('*****************************************');
              //var productInfo=controller.fetchSpecificItem(controller.products.value[index].id);
            },
            child: SizedBox(
              height: 120.0,
              child: Image.asset('images/product1.jpg'),
            ),
          ),
          Text(
            //' ',
            controller.products.value[index].prodName,
            style: TextStyle(fontSize: 18.0),
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                iconSize: 18.0,
                icon: Icon(Icons.favorite),
              ),
              Text(
                controller.products.value[index].price.toString(),
                // '\$ ${controller.categorisedProducts.value[index][index]}'
                //     .toString(),
                style: TextStyle(
                  color: Color.fromARGB(255, 122, 235, 182),
                  fontSize: 18.0,
                ),
              ),
            ],
          ),
        ],
      );
    });
  }
}

class CartProdTile extends StatelessWidget {
  final int index;
  CartController controller = Get.find<CartController>();
  CartProdTile({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return GetX<CartController>(builder: (controller) {
      return Container(
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () {
                var productId = controller.cartItems.value[index].id;
                Get.to(
                  () => const ItemScreen(),
                  arguments: productId,
                );
                print(productId);
                //var productInfo=controller.fetchSpecificItem(controller.products.value[index].id);
              },
              child: SizedBox(
                height: 180.0,
                child: Image.asset('images/product1.jpg'),
              ),
            ),
            Container(
              width: 180,
              child: Column(
                //crossAxisAlignment: ,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '${controller.cartItems.value[index].prodName} .............................',
                    style: TextStyle(fontSize: 22.0),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Text(
                    '\$ ${controller.cartItems.value[index].price}'.toString(),
                    style: TextStyle(
                      color: Color.fromARGB(255, 122, 235, 182),
                      fontSize: 20.0,
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      LikeButton(
                        icon: (Icons.favorite),
                        size: 30.0,
                        func: () {
                          //like();
                          print('Liked');
                        },
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.delete,
                          size: 30.0,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //AddToCartButton(id: controller.products.value[index].id)
          ],
        ),
      );
    });
  }
}
