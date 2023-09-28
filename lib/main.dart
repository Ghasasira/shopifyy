import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopifyy/controllers/authcontroller.dart';
import 'package:shopifyy/firebase_options.dart';
import 'package:shopifyy/screens/home.dart';
import 'package:shopifyy/screens/products.dart';
import 'package:shopifyy/screens/settings.dart';
import 'package:shopifyy/screens/startScreen.dart';
import 'package:shopifyy/screens/welcome.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      .then((value) => Get.put(AuthController()));
  runApp(const Shopify());
}

class Shopify extends StatelessWidget {
  const Shopify({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor: Color.fromARGB(255, 17, 229, 236),
          unselectedItemColor: Color.fromARGB(255, 61, 59, 51),
          elevation: 7,
          selectedLabelStyle: TextStyle(
            color: Color.fromARGB(255, 17, 229, 236),
            fontWeight: FontWeight.bold,
          ),
          unselectedLabelStyle: TextStyle(
              color: Color.fromARGB(255, 61, 59, 51),
              fontWeight: FontWeight.normal),
        ),
      ),
      home: const Start(),
      // initialRoute: ProductsPage.products,
      routes: {
        WelcomeScreen.welcome: (context) => const WelcomeScreen(),
        ProductsPage.products: (context) => const ProductsPage(),
        Settings.settings: (context) => const Settings(),
      },
    );
  }
}
