class Product {
  final String prodName;
  final double price;
  final bool isAvailable;
  final String prodDescription;
  final List categories;
  final String id;
  Product(
      {required this.prodName,
      required this.isAvailable,
      required this.price,
      required this.prodDescription,
      required this.categories,
      required this.id});
}
