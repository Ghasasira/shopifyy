import 'package:flutter/material.dart';

class Add extends StatelessWidget {
  const Add({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Center(
            child: Text(
              'Screen to be added',
              style: TextStyle(
                fontSize: 40.0,
                color: Colors.red,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
