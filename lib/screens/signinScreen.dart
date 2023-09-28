import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopifyy/controllers/signUpController.dart';

import 'home.dart';

class Signup extends StatelessWidget {
  final SignUpController controller = Get.put(SignUpController());
  final formkey = GlobalKey<FormState>();
  // TextEditingController emailController = TextEditingController();
  // TextEditingController passwordController = TextEditingController();
  // TextEditingController confirmPasswordController = TextEditingController();

  Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Color.fromARGB(255, 24, 247, 198)),
        child: Center(
          child: Flexible(
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
                          obscureText: true,
                        ),
                        SizedBox(
                          height: 25.0,
                        ),
                        TextField(
                          controller: controller.confirmpasswordController,
                          decoration: InputDecoration(
                            label: Text('Confirm Password'),
                            prefixIcon: Icon(Icons.fingerprint),
                            border: OutlineInputBorder(),
                          ),
                          obscureText: true,
                        ),
                        // Text('Location'),
                        // TextField(
                        //   textAlign: TextAlign.center,
                        // ),
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
                        controller.registerUser(
                            controller.emailController.text.trim(),
                            controller.passwordController.text.trim());
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => HomePage()),
                        // );
                      },
                      child: Text('signup'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
