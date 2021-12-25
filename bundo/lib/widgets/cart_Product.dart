import 'package:bundo/controller/cart_Contoller.dart';
import 'package:bundo/models/prodyct_model.dart';
import 'package:bundo/screen/checkOut_Screen.dart';
import 'package:bundo/screen/checkout.dart';
import 'package:bundo/widgets/checkOut/checkout_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartProduct extends StatelessWidget {
  final CratController controller = Get.find();
  CartProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Column(
        children: [
          Container(
            height: 500,
            color: Colors.grey.shade100,
            child: ListView.builder(
              itemCount: controller.product.length,
              itemBuilder: (BuildContext context, int index) {
                return CartProductCart(
                  controller: controller,
                  products: controller.product.keys.toList()[index],
                  quantity: controller.product.values.toList()[index],
                  index: index,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class CartProductCart extends StatelessWidget {
  final CratController controller;
  final Product products;
  final int quantity;
  final int index;

  const CartProductCart({
    Key? key,
    required this.controller,
    required this.products,
    required this.quantity,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screen;
    screen = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Container(
          margin: EdgeInsets.only(top: 10),
          width: screen,
          height: 96,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(left: 10),
                width: 80,
                height: 80,
                // decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      products.image,
                      fit: BoxFit.cover,
                    )),
              ),
              Container(
                //margin: EdgeInsets.only(right: screen * 0.15),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: 100,
                      child: Text(
                        products.name,
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF717171)),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: 100,
                      child: Text(
                        '₭ ' + '${products.price}',
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFF2AF21)),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        controller.removeProduct(products);
                      },
                      child: Container(
                        width: 28,
                        height: 28,
                        decoration: BoxDecoration(
                            border:
                                Border.all(width: 1, color: Color(0xFF00ACE6)),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(14)),
                        child: Icon(
                          Icons.remove,
                          color: Color(0XFF00ACE6),
                          size: 14,
                        ),
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(left: 10, right: 10),
                        child: Text(
                          '${quantity}',
                          style: TextStyle(color: Colors.lightBlue),
                        )),
                    GestureDetector(
                      onTap: () {
                        controller.addProduct(products);
                      },
                      child: Container(
                        width: 28,
                        height: 28,
                        decoration: BoxDecoration(
                            color: Color(0xFF00ACE6),
                            borderRadius: BorderRadius.circular(14)),
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 14,
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          
        ),
      ),
    );
  }
}

class CartTotal extends StatelessWidget {
  final CratController controller = Get.find();
  CartTotal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          height: 220,
          child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25))),
              height: 220,
              child: Padding(
                padding: const EdgeInsets.all(23.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total Product:',
                          style: TextStyle(
                            color: Color(0XFF9F9F9F),
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          '₭  ',
                          style:
                              TextStyle(fontSize: 15, color: Color(0xFFF2AF21)),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Subtotal:',
                          style: TextStyle(
                            color: Color(0XFF9F9F9F),
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          '₭  ' + '${controller.total}',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFF2AF21)),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 2,
                      color: Colors.grey.shade300,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Current Total:',
                            style: TextStyle(
                                color: Color(0XFF717171),
                                fontSize: 14,
                                fontWeight: FontWeight.bold)),
                        Text(
                          '${controller.total}',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFF2AF21)),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CheckOutScreen()));
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 46,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(23),
                            color: Color(0XFFF2AF21)),
                        child: Text('Checkout',
                            style:
                                TextStyle(color: Colors.white, fontSize: 15)),
                      ),
                    )
                  ],
                ),
              )),
        ));
  }
}

// class Qty extends StatelessWidget {
//   final CratController controller;
//   final Product products;
//   final int quantity;
//   const Qty(
//       {Key? key,
//       required this.controller,
//       required this.quantity,
//       required this.products})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         Text('Quantity'),
//         Row(
//           children: [
//             IconButton(
//                 onPressed: () {},
//                 icon: Icon(
//                   Icons.remove_circle,
//                   color: Colors.lightBlue,
//                 )),
//             Row(
//               children: List.generate(1,
//                   (index) => Text(controller.product.values.toList()[index])),
//             ),
//             IconButton(
//                 onPressed: () {},
//                 icon: Icon(
//                   Icons.remove_circle,
//                   color: Colors.lightBlue,
//                 )),
//           ],
//         )
//       ],
//     );
//   }
// }

class Subtotal extends StatelessWidget {
  final CratController controller = Get.find();
  Subtotal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Row(
        children: [Text('${controller.total}')],
      ),
    );
  }
}

class CurrentTotal extends StatelessWidget {
  final CratController controller = Get.find();
  CurrentTotal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Row(
        children: [Text('${controller.total}')],
      ),
    );
  }
}
