import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopifyy/controllers/products_controller.dart';
import 'package:shopifyy/reusable_components/prodTile.dart';

class ProDisplay extends StatefulWidget {
  const ProDisplay({super.key});

  @override
  State<ProDisplay> createState() => _ProDisplayState();
}

class _ProDisplayState extends State<ProDisplay> {
  ProductController controller = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              return GetX<ProductController>(builder: (controller) {
                return Wrap(
                  alignment: WrapAlignment.spaceAround,
                  children: List.generate(controller.products.length, (index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 150.0,
                        height: 250.0,
                        color: Colors.white,
                        child: ProdTile(
                          index: index,
                        ),
                      ),
                    );
                  }),
                );
              });
            }));
  }
}
