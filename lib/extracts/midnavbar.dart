import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../reusable_components/home_reusables.dart';

class MidNav extends StatelessWidget {
  const MidNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 134, 247, 232),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          MenuButtons(icon: Icon(Icons.category_outlined), label: 'Categories'),
          MenuButtons(icon: Icon(Icons.hotel_class), label: 'Hot Deals'),
          MenuButtons(
              icon: Icon(Icons.airplane_ticket_outlined),
              label: 'International'),
          MenuButtons(icon: Icon(Icons.person), label: 'For You'),
          MenuButtons(icon: Icon(Icons.monetization_on), label: 'Promos'),
        ],
      ),
    );
  }
}
