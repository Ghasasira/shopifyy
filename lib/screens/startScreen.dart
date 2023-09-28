import 'package:flutter/material.dart';
import 'package:shopifyy/screens/loginScreen.dart';
import 'package:shopifyy/screens/signinScreen.dart';

class Start extends StatelessWidget {
  const Start({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Color.fromARGB(255, 24, 247, 198)),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: Icon(
                  Icons.shopify,
                  size: 200.0,
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 4, // Elevation of the button
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(8), // Border radius of the button
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Login()),
                  );
                },
                child: Container(
                  width: double.infinity,
                  child: Center(
                    child: Text('login'),
                  ),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 4, // Elevation of the button
                  //fixedSize: Size(25.0, ),
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(8), // Border radius of the button
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Signup()),
                  );
                },
                child: Container(
                  width: double.infinity,
                  child: Center(
                    child: Text('signup'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
