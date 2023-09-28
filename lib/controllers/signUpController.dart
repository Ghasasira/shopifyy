import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import 'authcontroller.dart';

class SignUpController extends GetxController {
  static SignUpController get instance => Get.find();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmpasswordController = TextEditingController();

  void registerUser(String email, String password) {
    // ................................
    AuthController.instance
        .createUserWithEmailAndPassword(email: email, password: password);
  }

  void signinWithEmailandPassword(String email, String password) {
    AuthController.instance
        .signInWithEmailAndPassword(email: email, password: password);
  }
}
