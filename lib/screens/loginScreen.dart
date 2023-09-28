import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:shopifyy/controllers/signUpController.dart';
import 'package:shopifyy/screens/home.dart';

class Login extends StatelessWidget {
  final formkey = GlobalKey<FormState>();
  final controller = Get.put(SignUpController());
  // TextEditingController emailController = TextEditingController();
  // TextEditingController passwordController = TextEditingController();
  //TextEditingController passwordController = TextEditingController();
  Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Color.fromARGB(255, 24, 247, 198)),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Form(
                  key: formkey,
                  child: Column(
                    children: [
                      TextField(
                        controller: controller.emailController,
                        decoration: InputDecoration(
                          label: Text('Email'),
                          prefixIcon: Icon(Icons.email_outlined),
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(
                        height: 25.0,
                      ),
                      TextField(
                        controller: controller.passwordController,
                        decoration: InputDecoration(
                          label: Text('Password'),
                          prefixIcon: Icon(Icons.fingerprint),
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25.0,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      controller.signinWithEmailandPassword(
                          controller.emailController.text.trim(),
                          controller.passwordController.text.trim());
                      // print(emailController.text);
                      // print(passwordController.text);

                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => HomePage()),
                      // );
                    },
                    child: Text('login'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
