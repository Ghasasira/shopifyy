import 'package:flutter/material.dart';
import 'package:shopifyy/reusable_components/cartButton.dart';

class TopBarsProd extends StatefulWidget {
  const TopBarsProd({super.key});

  @override
  State<TopBarsProd> createState() => _TopBarsProdState();
}

class _TopBarsProdState extends State<TopBarsProd> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 65.0,
          color: Color.fromARGB(255, 134, 247, 232),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Category Name',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 40.0,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search_outlined),
              ),
              CartButton(size: 30.0)
            ],
          ),
        ),
        Container(
          height: 50.0,
          color: Color.fromARGB(255, 24, 26, 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'Filter By:',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    // border: Border.all(color: Colors.white),
                    ),
                width: 150.0,
                height: 30.0,
                child: Center(
                  child: ProdFilterWid(),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class ProdFilterWid extends StatefulWidget {
  const ProdFilterWid({super.key});

  @override
  State<ProdFilterWid> createState() => _ProdFilterWidState();
}

class _ProdFilterWidState extends State<ProdFilterWid> {
  List<String> listItems = ['Popularity', 'Lowest price', 'Highest price'];
  String? chosen;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: DropdownButton(
        style: TextStyle(color: Color.fromARGB(255, 12, 230, 146)),
        iconEnabledColor: Color.fromARGB(255, 12, 230, 146),
        value: chosen,
        onChanged: (newValue) {
          setState(() {
            chosen = newValue;
          });
        },
        items: listItems.map((valueItem) {
          return DropdownMenuItem(
            value: valueItem,
            child: Text(valueItem),
          );
        }).toList(),
      ),
    );
  }
}
