import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopifyy/controllers/products_controller.dart';
import 'package:shopifyy/reusable_components/home_reusables.dart';

class LowerHero extends StatefulWidget {
  const LowerHero({super.key});

  @override
  State<LowerHero> createState() => _LowerHeroState();
}

class _LowerHeroState extends State<LowerHero> {
  ProductController controller = Get.find<ProductController>();
  //List categories = [1, 2, 3, 4, 5];
  @override
  Widget build(BuildContext context) {
    return GetX<ProductController>(builder: (controller) {
      return ListView(
        children: [
          ListView.builder(
            //scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: controller.categories.length,
            itemBuilder: ((context, index) {
              return CategorisedTabs(
                category: controller.categories[index],
                //cat: categories[index],
              );
            }),
          ),
        ],
      );
    });
  }
}
