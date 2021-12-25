import 'package:bundo/controller/cart_Contoller.dart';
import 'package:bundo/screen/checkOut_Screen.dart';
import 'package:bundo/widgets/cart_Product.dart';
import 'package:bundo/widgets/checkOut/Cart_continue_CArt.dart';
import 'package:bundo/widgets/checkOut/Contineu_Order_widget.dart';
import 'package:bundo/widgets/checkOut/checkout_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContinueShopping extends StatelessWidget {
    final CratController controller = Get.find();
  final String Village,
      District,
      Province,
      PhoneNumber,
      title,
      imagesAddress,
      nameAddress;
  ContinueShopping(
      {Key? key,
      required this.title,
      required this.Village,
      required this.District,
      required this.Province,
      required this.PhoneNumber,
      required this.imagesAddress,
      required this.nameAddress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screen;
    screen = MediaQuery.of(context).size.width;
    return Scaffold(
      bottomNavigationBar:  Obx(() => Container(
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
                    // ignore: prefer_const_constructors
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
                        
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 46,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(23),
                            color: Color(0XFFF2AF21)),
                        child: Text('Continue',
                            style:
                                TextStyle(color: Colors.white, fontSize: 15)),
                      ),
                    )
                  ],
                ),
              )),
        )),
      backgroundColor: Colors.grey.shade200,
      appBar: Custom_appbar_contineu(context, screen),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              OrderPlaced(),
              SizedBox(
                height: 15,
              ),
              Container(
                  width: screen,
                  height: 72,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.local_shipping,
                                    color: Colors.lightBlue,
                                  )),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Order Tracking',
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Color(0xFF717171),
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Text('Picked Up',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.lightBlue,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Text('Mobile: +85620 9222 9222',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0xFF717171))),
                                ],
                              ),
                            ],
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.arrow_right_sharp))
                        ],
                      ))),
              SizedBox(
                height: 15,
              ),
              Container(
                  width: screen,
                  height: 90,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.map_sharp,
                                color: Colors.lightBlue,
                              )),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                title,
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Color(0xFF717171),
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                      'Address: ' +
                                          Village +
                                          ' , ' +
                                          District +
                                          ' , ' +
                                          Province,
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0xFF717171))),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Text('Mobile: ' + PhoneNumber,
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0xFF717171))),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ))),
                      SizedBox(height: 15,),
              Container(
                width: 500,
                height: 60,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Container(
                        width: 64,
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            imagesAddress,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(nameAddress),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              CartProductContineu(),
            ],
          ),
        ),
      ),
    );
  }
}













// class ContinueShopping extends StatefulWidget {
//   ContinueShopping({Key? key}) : super(key: key);

//   @override
//   _ContinueShoppingState createState() => _ContinueShoppingState();
// }

// class _ContinueShoppingState extends State<ContinueShopping> {
//   final String Village, District, Province, PhoneNumber;
//   @override
//   Widget build(BuildContext context) {
//     double screen;
//     screen = MediaQuery.of(context).size.width;
//     return 
//   }
// }

// class SetstateAddress extends StatelessWidget {
//   final String Village, District, Province, PhoneNumber;
//   SetstateAddress(
//       {Key? key,
//       required this.Village,
//       required this.District,
//       required this.Province,
//       required this.PhoneNumber})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     double screen;
//     screen = MediaQuery.of(context).size.width;
//     return Column(
//       children: [
        
//       ],
//     );
//   }
// }
