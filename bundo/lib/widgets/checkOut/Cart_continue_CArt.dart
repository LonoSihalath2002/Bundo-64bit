import 'package:bundo/controller/cart_Contoller.dart';
import 'package:bundo/models/prodyct_model.dart';
import 'package:bundo/screen/checkout.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartProductContineu extends StatelessWidget {
  final CratController controller = Get.find();
  CartProductContineu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        height: 250,
        child: ListView.builder(
          itemCount: controller.product.length,
          itemBuilder: (BuildContext context, int index) {
            return CartContinueProductCart(
              controller: controller,
              products: controller.product.keys.toList()[index],
              quantity: controller.product.values.toList()[index],
              index: index,
            );
          },
        ),
      ),
    );
  }
}

class CartContinueProductCart extends StatelessWidget {
  final CratController controller;
  final Product products;
  final int quantity;
  final int index;

  const CartContinueProductCart({
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
    );
  }
}
