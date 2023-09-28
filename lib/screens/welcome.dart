import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shopifyy/controllers/products_controller.dart';
import 'package:shopifyy/extracts/herosection.dart';
import 'package:shopifyy/extracts/lowerHerosection.dart';
import 'package:shopifyy/extracts/midnavbar.dart';

class WelcomeScreen extends StatefulWidget {
  static String welcome = 'welcome';
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    ProductController controller = Get.put(ProductController());
    return const Column(
      //mainAxisAlignment: MainAxisAlignment.center,
      children: [
        HeroSection(),
        MidNav(),
        Expanded(
          child: LowerHero(),
        ),
      ],
    );
  }
}
