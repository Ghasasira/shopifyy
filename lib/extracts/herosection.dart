import 'package:flutter/material.dart';
import 'package:shopifyy/reusable_components/cartButton.dart';

class HeroSection extends StatefulWidget {
  const HeroSection({super.key});

  @override
  State<HeroSection> createState() => _HeroSectionState();
}

class _HeroSectionState extends State<HeroSection> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        //color: Color.fromARGB(255, 196, 240, 234),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/letsgo.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0.0, 30.0, 0.0, 0.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 275.0,
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'search',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        prefixIcon: Icon(Icons.search_rounded),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.chat_outlined,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      CartButton(size: 35.0),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: SizedBox(
                    width: 180.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Fashion Week"),
                        const Text(
                          '80% OFF',
                          style: TextStyle(
                            fontSize: 40.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text('Discover fashion that suits your style'),
                        ElevatedButton(
                            onPressed: () {},
                            child: const Text('Check this Out'))
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
