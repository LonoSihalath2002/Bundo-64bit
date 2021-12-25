import 'dart:math';

import 'package:bundo/detail/detail.dart';
import 'package:bundo/detail/details.dart';
import 'package:bundo/models/prodyct_model.dart';
import 'package:bundo/screen/User.dart';
import 'package:bundo/screen/cart_screen.dart';
import 'package:bundo/widgets/home_widge/authen_widget.dart';
import 'package:bundo/widgets/home_widge/bottomNavigation%20_Widget.dart';
import 'package:bundo/widgets/home_widge/category_widget.dart';
import 'package:bundo/widgets/home_widge/cusTom_Navbar.dart';
import 'package:bundo/widgets/home_widge/justforyou_product.dart';
import 'package:bundo/widgets/home_widge/onSaleProduct.dart';
import 'package:bundo/widgets/home_widge/popularProduct.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CatalogScreen extends StatelessWidget {
  CatalogScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screen;
    screen = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.grey.shade100,
        bottomNavigationBar: mainbottomNavigationbar(context),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.pink,
          onPressed: () => Get.to(() => CartScreen()),
          //Navigator.push(context, MaterialPageRoute(builder: (context) => CartScreen())),
          child: Icon(Icons.shopping_cart),
        ),
        appBar: Appbarr(context, screen),
        body: SingleChildScrollView(
          child: Column(children: [
            imageMain(screen),
            Padding(
              padding: const EdgeInsets.only(left: 25, bottom: 10),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Row(
                        children: List.generate(
                            1,
                            (index) =>
                                category(Categories.categories[0].image))),
                    Row(
                        children: List.generate(
                            1,
                            (index) =>
                                category(Categories.categories[1].image))),
                    Row(
                        children: List.generate(
                            1,
                            (index) =>
                                category(Categories.categories[2].image))),
                    Row(
                        children: List.generate(
                            1,
                            (index) =>
                                category(Categories.categories[3].image))),
                    Row(
                        children: List.generate(
                            1,
                            (index) =>
                                category(Categories.categories[4].image))),
                    Row(
                        children: List.generate(
                            1,
                            (index) =>
                                category(Categories.categories[5].image))),
                  ],
                ),
              ),
            ),
            featuredProduct(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 25,
                ),
                child: Row(
                  children: [
                    FeatureProcuct('images/Branner-1.png'),
                    FeatureProcuct2('images/Branner-2.png'),
                    FeatureProcuct3('images/Branner-3.png'),
                    FeatureProcuct4('images/Branner4.png'),
                  ],
                ),
              ),
            ),
            // CatalogProduct(),
            onSaleProduct(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                margin: EdgeInsets.only(left: 25),
                child: Row(
                  children: List.generate(
                    5,
                    (index) => GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Details(
                                    image: Product.products[index].image,
                                    name: Product.products[index].name,
                                    price: Product.products[index].price
                                        .toString(),
                                    index: index)));
                      },
                      child: onsaleProduct(
                          Product.products[index].image,
                          Product.products[index].name,
                          Product.products[index].price),
                    ),
                  ),
                ),
              ),
            ),
            poppularProduct(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                margin: EdgeInsets.only(left: 25),
                child: Row(
                  children: List.generate(
                    5,
                    (index) => GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Details(
                                    image: Product.products[index].image,
                                    name: Product.products[index].name,
                                    price: Product.products[index].price
                                        .toString(),
                                    index: index)));
                      },
                      child: onsaleProduct(
                          Product.products[index].image,
                          Product.products[index].name,
                          Product.products[index].price),
                    ),
                  ),
                ),
              ),
            ),
            justFroyouProduct(),
            justforyouu(),
            Container(
              height: 60,
              width: screen,
              color: Colors.white,
              margin: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      height: 50,
                      width: 60,
                      child: Image.asset(
                        Product.products[5].image,
                        fit: BoxFit.cover,
                      )),
                ],
              ),
            ),
          ]),
        ));
  }
}
