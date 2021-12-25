// import 'package:bundo/models/prodyct_model.dart';
// import 'package:get/get.dart';


// class CartController extends GetxController {
//   static CartController instance = Get.find();
//   RxDouble totalCartPrice = 0.0.obs;

//   void addProductToCart(Product product) {
//     try {
//       if (_isItemAlreadyAdded(product)) {
//         Get.snackbar("Check your cart", "${product.name} is already added");
//       } else {
//         String itemId = Uuid().toString();
//         userController.updateUserData({
//           "cart": FieldValue.arrayUnion([
//             {

//               "name": product.name,
//               "quantity": 1,
//               "price": product.price,
//               "image": product.image,
//             }
//           ])
//         });
//         Get.snackbar("Item added", "${product.name} was added to your cart");
//       }
//     } catch (e) {
//       Get.snackbar("Error", "Cannot add this item");
//       debugPrint(e.toString());
//     }
//   }

//   void removeCartItem(CartItemModel cartItem) {
//     try {
//       userController.updateUserData({
//         "cart": FieldValue.arrayRemove([cartItem.toJson()])
//       });
//     } catch (e) {
//       Get.snackbar("Error", "Cannot remove this item");
//       debugPrint(e.message);
//     }
//   }

//   changeCartTotalPrice(UserModel userModel) {
//     totalCartPrice.value = 0.0;
//     if (userModel.cart.isNotEmpty) {
//       userModel.cart.forEach((cartItem) {
//         totalCartPrice += cartItem.cost;
//       });
//     }
//   }

//   bool _isItemAlreadyAdded(ProductModel product) =>
//       userController.userModel.value.cart
//           .where((item) => item.productId == product.id)
//           .isNotEmpty;

//   void decreaseQuantity(CartItemModel item){
//     if(item.quantity == 1){
//       removeCartItem(item);
//     }else{
//       removeCartItem(item);
//       item.quantity--;
//           userController.updateUserData({
//         "cart": FieldValue.arrayUnion([item.toJson()])
//       });
//     }
//   }

//     void increaseQuantity(CartItemModel item){
//       removeCartItem(item);
//       item.quantity++;
//       logger.i({"quantity": item.quantity});
//           userController.updateUserData({
//         "cart": FieldValue.arrayUnion([item.toJson()])
//       });
//   }
// }
