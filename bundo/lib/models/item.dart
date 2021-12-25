import 'package:get/state_manager.dart';

class Product {
  final String name;
  final String image;
  final String productDescription;
  final int price;

  Product({

    required this.name,
    required this.image,
    required this.productDescription,
    required this.price,
  });

  final isFavorite = false.obs;
}
