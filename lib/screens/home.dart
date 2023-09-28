import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopifyy/screens/add.dart';
import 'package:shopifyy/screens/settings.dart';
import 'package:shopifyy/screens/products.dart';
import 'package:shopifyy/screens/singleItem.dart';
import 'package:shopifyy/screens/welcome.dart';

class HomePage extends StatefulWidget {
  static String welcome = 'homepage';
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  static List<Widget> _screens = [
    WelcomeScreen(),
    ProductsPage(),
    Add(),
    Settings(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
    //Navigator.push<void>(context, MaterialPageRoute(builder: (BuildContext,context)=>const _screens[_currentIndex]),);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //appBar: AppBar(),
        body: _screens[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.list,
              ),
              label: 'Categories',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.add_box_outlined,
              ),
              label: 'Add',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
              ),
              label: 'Settings',
            ),
          ],
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
