import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopifyy/controllers/products_controller.dart';

import '../extracts/item.dart';

class ItemScreen extends StatefulWidget {
  const ItemScreen({super.key});

  @override
  State<ItemScreen> createState() => _ItemScreenState();
}

class _ItemScreenState extends State<ItemScreen> {
  @override
  void initState() {
    jsonify();
    super.initState();
  }

  ProductController controller = Get.find<ProductController>();
  final prodId = Get.arguments.toString();
  String? name;
  double? price;
  String? description;
  void jsonify() async {
    try {
      var specs = await controller.fetchSpecificItem(prodId);
      setState(() {
        name = specs['name'];
        price = specs['price'];
        description = specs['description'];
      });

      print('done...................');
      print('${name},${price},${description}');
    } catch (e) {
      print('${e} failed');
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 122, 235, 182),
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(Icons.arrow_back_ios_new_rounded),
          ),
        ),
        body: Material(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                ItemTopBar(),
                Expanded(
                  child: ItemImages(),
                ),
                ItemInfo(
                  name: name!,
                  price: price!,
                  description: description!,
                  id: prodId,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
