// ignore: file_names
import 'package:bundo/controller/cart_Contoller.dart';
import 'package:bundo/screen/cart_screen.dart';
import 'package:bundo/widgets/favoriteProduct.dart';
import 'package:bundo/widgets/home_widge/justforyou_product.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class DetailProduct extends StatefulWidget {

  @override
  _DetailProductState createState() => _DetailProductState();
}

class _DetailProductState extends State<DetailProduct> {
  final cartController = Get.put(CratController());
  late String image, price, name;
  late int index;


  @override
  Widget build(BuildContext context) {
      double screen;
    screen = MediaQuery.of(context).size.width;
    return Scaffold(
         body: SingleChildScrollView(
           child: Stack(children: [
      Hero(
          tag: image,
          child: Container(
            padding: EdgeInsets.only(bottom: 2900),
            color: Colors.white,
            child: Image.asset(image,
                height: 500, width: screen, fit: BoxFit.cover),
          )),
      Positioned(
        width: screen,
        top: 70,
        child: Container(
          margin: EdgeInsets.only(left: 5, right: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon:
                    Icon(Icons.arrow_back, size: 35, color: Color(0xFF545D68)),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              IconButton(
                icon: Icon(Icons.shopping_cart,
                    size: 35, color: Color(0xFF545D68)),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CartScreen()));
                },
              ),
            ],
          ),
        ),
      ),
      //-------------------main-------------------------------
      Positioned(
          top: 440,
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: screen,
                    height: 500,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25),
                            topRight: Radius.circular(25)),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 10,
                              offset: Offset(0, 5))
                        ]),
                  ),
                  Positioned(
                    child: Column(
                      children: [
                        Container(
                          padding:
                              EdgeInsets.only(top: 20, left: 20, right: 20),
                          width: screen,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('₭' + ' ' + '$price',
                                  style: TextStyle(
                                      fontSize: 21,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFFF2AF21))),
                              Row(
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.share)),
                                  FavoriteProduct()
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(
                            left: 20,
                          ),
                          width: screen,
                          child: Row(
                            children: [
                              Text(
                                name,
                                style: TextStyle(
                                    fontSize: 21,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF717171)),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 5),
                          padding: EdgeInsets.only(
                            left: 20,
                          ),
                          width: screen,
                          child: Row(
                            children: [
                              Image.asset('images/Salle.png'),
                              Container(
                                  margin: EdgeInsets.only(left: 5),
                                  width: 30,
                                  child: Image.asset('images/Shipping.png')),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          padding: EdgeInsets.only(
                            left: 20,
                          ),
                          width: screen,
                          child: Row(
                              children: List.generate(
                                  5,
                                  (index) => Icon(
                                        Icons.star,
                                        size: 20,
                                        color: Colors.lightBlue,
                                      ))),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 25, right: 25),
                          width: screen,
                          child: Column(
                            children: [
                              Text(
                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ',
                                  style: TextStyle(
                                      fontSize: 12, color: Color(0xFF717171)))
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Container(
                          width: screen,
                          padding: EdgeInsets.only(left: 25, right: 25),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    width: 60,
                                    height: 60,
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.circular(30),
                                        child: Image.asset(
                                          'images/Aprofile.jpeg',
                                          fit: BoxFit.cover,
                                        )),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Text(
                                      'Aiy Addy',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF717171)),
                                    ),
                                  ),
                                ],
                              ),
                              TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    '+ Follow',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF00ACE6)),
                                  ))
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Container(
                          width: screen * 1,
                          height: 54,
                          padding: EdgeInsets.only(left: 25, right: 25),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    'Positivity',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF717171)),
                                  ),
                                  Text(
                                    '98%',
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFFF2AF21)),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    'Ship on time',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF717171)),
                                  ),
                                  Text(
                                    '100%',
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFFF2AF21)),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    'Response rate',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF717171)),
                                  ),
                                  Text(
                                    '97%',
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFFF2AF21)),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Container(
                          width: screen,
                          padding: EdgeInsets.only(left: 25, right: 25),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 152,
                                height: 46,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    color: Color(0xFFE2F8FF),
                                    border: Border.all(
                                        width: 2, color: Color(0xFF00ACE6))),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Chat',
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Color(0xFF00ACE6)),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 152,
                                height: 46,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    color: Color(0xFFFFF9EB),
                                    border: Border.all(
                                        width: 2, color: Color(0xFFF2AF21))),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Visit Store',
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Color(0xFFF2AF21)),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Container(
                          width: screen,
                          child: SingleChildScrollView(),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        SingleChildScrollView(
                          child: Container(
                            width: screen,
                            height: 2900,
                            color: Colors.grey.shade200,
                            child: Column(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 25, top: 10),
                                  child: Row(
                                    children: [
                                      Text('Related Products',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color(0xFF00ACE6),
                                              fontWeight: FontWeight.bold))
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Center(
                                  child: Container(
                                    child: Wrap(
                                      alignment: WrapAlignment.center,
                                      spacing: 20,
                                      runSpacing: 20,
                                      children: [justforyouu()],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ))
    ]),),
    );
  }
}