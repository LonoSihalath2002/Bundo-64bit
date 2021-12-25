
import 'package:bundo/controller/cart_Contoller.dart';
import 'package:bundo/models/prodyct_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Detail extends StatelessWidget {
  final cartController = Get.put(CratController());
  final int index;
  final String image, name, price;
  Detail(
      {Key? key,
      required this.image,
      required this.name,
      required this.price,
      required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screen;
    screen = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Column(
          children: [
            Image.asset(
              image,
              width: 600,
              height: 450,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.pink,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '${price}',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.pink,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(height: 50),
            Container(
                width: 150,
                height: 35,
                child: ElevatedButton(
                    onPressed: () {
                      showModalBottomSheet(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30))),
                          context: context,
                          builder: (BuildContext context) {
                            return Padding(
                              padding: const EdgeInsets.all(25.0),
                              child: Container(
                                width: screen,
                                height: 250,
                                child: Column(
                                  children: [
                                    Container(
                                      width: screen,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Container(
                                                width: 66,
                                                height: 66,
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                        width: 1.5,
                                                        color:
                                                            Colors.lightBlue),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15)),
                                                child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15),
                                                    child: Image.asset(
                                                      image,
                                                      fit: BoxFit.cover,
                                                    )),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 20),
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              bottom: 5),
                                                      child: Text(
                                                          '₭' + ' ' + '$price',
                                                          style: TextStyle(
                                                              fontSize: 18,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              color: Color(
                                                                  0xFFF2AF21))),
                                                    ),
                                                    Text(name,
                                                        style: TextStyle(
                                                            fontSize: 21,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: Color(
                                                                0xFF717171))),
                                                    Row(
                                                      children: [
                                                        Container(
                                                            margin:
                                                                const EdgeInsets
                                                                        .only(
                                                                    top: 5),
                                                            child: Image.asset(
                                                                'images/Salle.png')),
                                                        Container(
                                                            margin:
                                                                const EdgeInsets
                                                                        .only(
                                                                    top: 5,
                                                                    left: 5,
                                                                    right: 15),
                                                            width: 30,
                                                            child: Image.asset(
                                                                'images/Shipping.png'))
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                          IconButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                              icon: Icon(
                                                Icons.close,
                                                color: Colors.grey,
                                                size: 35,
                                              ))
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 50,
                                    ),
                                    Container(
                                      width: screen,
                                      child: Column(
                                        children: [],
                                      ),
                                    ),
                                    Column(
                                      children: [
                                        ElevatedButton(
                                            onPressed: () {
                                              cartController.addProduct(
                                                  Product.products[index]);
                                            },
                                            child: Text('Add to Cart'))
                                      ],
                                      // children: List.generate(
                                      //   1,
                                      //   (index) => GestureDetector(
                                      //     onTap: () {
                                      //       cartController.addProduct(
                                      //           Product.products[index]);
                                      //     },
                                      //     child: Container(
                                      //       width: MediaQuery.of(context)
                                      //           .size
                                      //           .width,
                                      //       height: 50,
                                      //       decoration: BoxDecoration(
                                      //           color: Colors.pink,
                                      //           borderRadius:
                                      //               BorderRadius.circular(25)),
                                      //       child: Row(
                                      //         mainAxisAlignment:
                                      //             MainAxisAlignment.center,
                                      //         children: [
                                      //           Text('Add to Cart',
                                      //               style: TextStyle(
                                      //                   fontSize: 15,
                                      //                   fontWeight:
                                      //                       FontWeight.bold,
                                      //                   color: Colors.white)),
                                      //           Padding(
                                      //             padding:
                                      //                 const EdgeInsets.only(
                                      //                     left: 10),
                                      //             child: Icon(
                                      //                 Icons.shopping_cart,
                                      //                 color: Colors.white),
                                      //           )
                                      //         ],
                                      //       ),
                                      //     ),
                                      //   ),
                                      // ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          });
                    },
                    child: Text('Add to cart')))
          ],
        ),
      ),
    );
  }
}
