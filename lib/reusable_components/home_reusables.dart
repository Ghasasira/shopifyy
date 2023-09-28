import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopifyy/reusable_components/prodTile.dart';

import '../controllers/products_controller.dart';

class MenuButtons extends StatelessWidget {
  final String? label;
  final Icon? icon;
  const MenuButtons({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Container(
        child: Column(
          children: [
            Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(255, 4, 224, 158),
                ),
                child: IconButton(onPressed: () {}, icon: icon!)),
            const SizedBox(
              height: 3.0,
            ),
            Text(label!),
          ],
        ),
      ),
    );
  }
}

class CategorisedTabs extends StatelessWidget {
  ProductController controller = Get.find<ProductController>();

  final String category;
  CategorisedTabs({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ListView(
            shrinkWrap: true,
            children: [
              Text(category),
              SizedBox(
                height: 210.0,
                child: Row(
                  children: [
                    Expanded(
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return ItemWid();
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class ItemWid extends StatelessWidget {
  const ItemWid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        //height: 200.0,
        width: 180.0,
        color: Color.fromARGB(255, 254, 255, 255),
        child: CategorisedProdTile(
          index: 1,
        ),
      ),
    );
  }
}
