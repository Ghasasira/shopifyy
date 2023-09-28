import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopifyy/controllers/cart_controller.dart';
import 'package:shopifyy/controllers/products_controller.dart';
import 'package:shopifyy/reusable_components/cartButton.dart';

class ItemTopBar extends StatefulWidget {
  const ItemTopBar({super.key});

  @override
  State<ItemTopBar> createState() => _ItemTopBarState();
}

class _ItemTopBarState extends State<ItemTopBar> {
  ProductController controller = Get.find<ProductController>();
  CartController cartcontroller = Get.put(CartController());
  IconData icon = Icons.favorite_outline;

  void like() {
    setState(() {
      if (icon == Icons.favorite_outline) {
        icon = Icons.favorite;
      } else {
        icon = Icons.favorite_outline;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Flexible(
            child: LikeButton(
              icon: icon,
              size: 40.0,
              func: () {
                like();
              },
            ),
            // child: IconButton(
            //   onPressed: () {
            //     like();
            //   },
            //   icon: Icon(
            //     icon,
            //     size: 40.0,
            //     //fill: ,
            //     color: Colors.red,
            //   ),
            // ),
          ),

          SizedBox(
            width: 20.0,
          ),
          Icon(
            Icons.ios_share,
            size: 40.0,
          ),
          SizedBox(
            width: 20.0,
          ),
          CartButton(size: 40)
          // Icon(
          //   Icons.shopify_outlined,
          //   size: 30.0,
          // ),
        ],
      ),
    );
  }
}

class ItemInfo extends StatelessWidget {
  CartController cartcontroller = Get.put(CartController());
  ProductController controller = Get.find<ProductController>();
  final String id;
  final String name;
  final String description;
  final double price;
  ItemInfo(
      {super.key,
      required this.name,
      required this.id,
      required this.description,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Item maker/seller"),
          Text(
            '${name}:  ${description}',
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.star_rate_rounded,
                    color: Colors.orange,
                  ),
                  Text(
                    '4.6 Ratings',
                    style: TextStyle(fontSize: 15.0),
                  ),
                ],
              ),
              Text('100+ Reviews'),
              Text('2000+ Sold'),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Text(
                  'About',
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(
                      255,
                      122,
                      235,
                      182,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Wrap(
                  alignment: WrapAlignment.spaceEvenly,
                  spacing: 50.0,
                  children: [
                    Text('Brand: ........'),
                    Text('color:...........'),
                    Text('size:...........'),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Unit Price'),
                    Text(
                      '\$ ${price}',
                      style: TextStyle(
                        color: Color.fromARGB(255, 122, 235, 182),
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                // Row(
                //   children: [
                //     Container(
                //       decoration: BoxDecoration(
                //         borderRadius: BorderRadius.circular(20.0),
                //         color: Color.fromARGB(255, 122, 235, 182),
                //       ),
                //       width: 40.0,
                //       //color: Color.fromARGB(255, 122, 235, 182),
                //       child: Center(
                //         child: Icon(Icons.remove),
                //       ),
                //     ),
                //     Padding(
                //       padding: const EdgeInsets.all(4.0),
                //       child: SizedBox(
                //         width: 20.0,
                //         child: Center(
                //           child: Text('0'),
                //         ),
                //       ),
                //     ),
                //     Container(
                //       decoration: BoxDecoration(
                //         borderRadius: BorderRadius.circular(20.0),
                //         color: Color.fromARGB(255, 122, 235, 182),
                //       ),
                //       width: 40.0,
                //       //color: Color.fromARGB(255, 122, 235, 182),
                //       child: Center(child: Icon(Icons.add)),
                //     ),
                //     SizedBox(
                //       width: 10.0,
                //     ),
                //     AddToCartButton(id: id)
                //   ],
                // ),
                SizedBox(
                  width: 10.0,
                ),
                AddToCartButton(id: id)
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ItemImages extends StatefulWidget {
  const ItemImages({super.key});

  @override
  State<ItemImages> createState() => _ItemImagesState();
}

class _ItemImagesState extends State<ItemImages> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        color: Colors.white,
        child: Row(
          children: [
            Wrap(
              direction: Axis.vertical,
              spacing: 20.0,
              children: List.generate(
                4,
                (index) => Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    width: 50.0,
                    height: 50.0,
                    //color: Colors.greenAccent,
                    child: Image.asset('images/logo.jpg'),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset('images/product1.jpg'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
