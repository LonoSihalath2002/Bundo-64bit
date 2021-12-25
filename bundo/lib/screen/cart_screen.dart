import 'package:bundo/controller/cart_Contoller.dart';
import 'package:bundo/screen/checkout.dart';
import 'package:bundo/widgets/cart_Product.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartScreen extends StatelessWidget {
  CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Cart'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              CartProduct(),
              CartTotal(),
            ],
          ),
        ));
  }
}
