//import 'dart:convert';

import 'package:get/get.dart';
import 'package:shopifyy/models/products.dart';

class ProductController extends GetxController {
  RxList<Product> products = <Product>[].obs;
  var categorisedProducts = [].obs;
  var categories = <String>[].obs;

  @override
  void onInit() {
    fetchProducts();
    fetchCategory();
    fetchItemsByCategory();
    //fetchItemsOfCategory(category)
    super.onInit();
  }

  void fetchProducts() async {
    List<Product> productList = [
      Product(
        id: '1',
        prodName: 'Product 1',
        isAvailable: true,
        price: 19.99,
        prodDescription: 'Description of Product 1',
        categories: ['Category A', 'Category D'],
      ),
      Product(
        id: '2',
        prodName: 'Product 2',
        isAvailable: true,
        price: 24.99,
        prodDescription: 'Description of Product 2',
        categories: ['Category B', 'Category C'],
      ),
      Product(
        id: '3',
        prodName: 'Product 3',
        isAvailable: false,
        price: 15.50,
        prodDescription: 'Description of Product 3',
        categories: ['Category A'],
      ),
      Product(
        id: '4',
        prodName: 'Product 4',
        isAvailable: true,
        price: 29.99,
        prodDescription: 'Description of Product 4',
        categories: ['Category C'],
      ),
      Product(
        id: '5',
        prodName: 'Product 5',
        isAvailable: true,
        price: 9.99,
        prodDescription: 'Description of Product 5',
        categories: ['Category B'],
      ),
      // Add five more Product objects below
      Product(
        id: '6',
        prodName: 'Product 6',
        isAvailable: true,
        price: 12.99,
        prodDescription: 'Description of Product 6',
        categories: ['Category A', 'Category C'],
      ),
      Product(
        id: '7',
        prodName: 'Product 7',
        isAvailable: false,
        price: 17.50,
        prodDescription: 'Description of Product 7',
        categories: ['Category B'],
      ),
      Product(
        id: '8',
        prodName: 'Product 8',
        isAvailable: true,
        price: 39.99,
        prodDescription: 'Description of Product 8',
        categories: ['Category A', 'Category C'],
      ),
      Product(
        id: '9',
        prodName: 'Product 9',
        isAvailable: true,
        price: 14.99,
        prodDescription: 'Description of Product 9',
        categories: ['Category B', 'Category C'],
      ),
      Product(
        id: '10',
        prodName: 'Product 10',
        isAvailable: true,
        price: 8.99,
        prodDescription: 'Description of Product 10',
        categories: ['Category A', 'Category B', 'Category C'],
      ),
      Product(
        id: '11',
        prodName: 'Product 11',
        isAvailable: true,
        price: 30.99,
        prodDescription: 'Description of Product 11',
        categories: ['Category B', 'Category C'],
      ),
    ];
    ;
    products.value = productList;
  }

  void fetchCategory() async {
    for (int i = 0; i <= (products.length); i++) {
      var list = products.value[i].categories;
      list.forEach((element) {
        if (categories.contains(element)) {
        } else {
          categories.add(element);
        }
      });
    }
  }

  fetchSpecificItem(id) async {
    var singleItem = await products.firstWhere((product) => product.id == id);
    String name = singleItem.prodName;
    double price = singleItem.price;
    String description = singleItem.prodDescription;
    var itemSpecs = {'name': name, 'price': price, 'description': description};
    return itemSpecs;
    // orElse: () =>);
  }

  fetchItemsOfCategory(category) async {
    try {
      var categoryProducts = await products
          .where((product) => product.categories.contains(category));

      return categoryProducts.toList();
    } catch (e) {
      print(e);
    }
  }

  fetchItemsByCategory() async {
    categories.forEach((element) async {
      var prodcatList = await fetchItemsOfCategory(element);
      categorisedProducts.value.add(prodcatList);
    });
//categories['']=;
    //fetchItemsOfCategory(category);
  }
}
