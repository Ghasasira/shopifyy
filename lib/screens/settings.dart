import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  static String settings = 'settings_screen';
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 40.0,
        ),
        Center(
          child: Icon(
            Icons.shopify,
            size: 300.0,
            color: Color.fromARGB(255, 122, 235, 182),
          ),
        ),
        SizedBox(
          height: 40.0,
        ),
        SettingsBar(
          icon: Icons.person_pin,
          label: 'Account',
        ),
        SettingsBar(
          icon: Icons.shopping_cart_rounded,
          label: 'About Shopify',
        ),
        SettingsBar(
          icon: Icons.star_border,
          label: 'Rate Us',
        ),
        SettingsBar(
          icon: Icons.logout,
          label: 'Log Out',
        ),
      ],
    );
  }
}

class SettingsBar extends StatelessWidget {
  final IconData? icon;
  final String? label;
  const SettingsBar({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        debugPrint('clicked');
      },
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            border: Border.all(color: Colors.blue),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                SizedBox(
                  width: 10.0,
                ),
                Icon(
                  icon!,
                  color: Color.fromARGB(255, 122, 235, 182),
                  size: 30.0,
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  label!,
                  style: TextStyle(fontSize: 30.0),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
