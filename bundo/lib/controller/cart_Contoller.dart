import 'package:bundo/models/prodyct_model.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';

class CratController extends GetxController {
  RxDouble totalCartPrice = 0.0.obs;
  var _products = {}.obs;
  //double get totalPrice =>;

  //  changeCartTotalPrice(Product product) {
  //   totalCartPrice.value = 0.0;
  //   if (product.cart.isNotEmpty) {
  //     product.cart.forEach((cartItem) {
  //       totalCartPrice += p.cost;
  //     });
  //   }
  // }

  void addProduct(Product product) {
    if (_products.containsKey(product)) {
      _products[product] += 1;
    } else {
      _products[product] = 1;
    }

    // Get.snackbar(
    //   'Product Added',
    //   'You have added the ${product.name} to the Cart',
    //   snackPosition: SnackPosition.TOP,
    //   duration: Duration(seconds: 2),
    // );
  }

  void removeProduct(Product product) {
    if (_products.containsKey(product) && _products[product] == 1) {
      _products.removeWhere((key, value) => key == product);
    } else {
      _products[product] -= 1;
    }
  }

  get product => _products;

  get productSubtotal => _products.entries
      .map((prducts) => prducts.key.price * prducts.value)
      .toList();

  get total => _products.entries
      .map((prducts) => prducts.key.price * prducts.value)
      .toList()
      .reduce((value, element) => value + element);
}
