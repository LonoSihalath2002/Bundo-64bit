import 'package:bundo/controller/cart_Contoller.dart';
import 'package:bundo/screen/Continue.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Row shippingAddress() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        'Shipping Address',
        style: TextStyle(
            fontSize: 16,
            color: Color(0xFF717171),
            fontWeight: FontWeight.bold),
      ),
      TextButton(
          onPressed: () {},
          child: Text('+ Add New',
              style: TextStyle(
                  fontSize: 12,
                  color: Color(0xFF00ACE6),
                  fontWeight: FontWeight.bold)))
    ],
  );
}

// Row Delively() {
//   return Row(
//     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//     children: [
//       Text(
//         'Delivery Service',
//         style: TextStyle(
//             fontSize: 16,
//             color: Color(0xFF717171),
//             fontWeight: FontWeight.bold),
//       ),
//       TextButton(
//           onPressed: () {},
//           child: Text('+ Edit',
//               style: TextStyle(
//                   fontSize: 12,
//                   color: Color(0xFF00ACE6),
//                   fontWeight: FontWeight.bold)))
//     ],
//   );
// }

Row PaymentMethod() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        'Payment Method',
        style: TextStyle(
            fontSize: 16,
            color: Color(0xFF717171),
            fontWeight: FontWeight.bold),
      ),
      TextButton(
          onPressed: () {},
          child: Text('+ Add New',
              style: TextStyle(
                  fontSize: 12,
                  color: Color(0xFF00ACE6),
                  fontWeight: FontWeight.bold)))
    ],
  );
}

class radioPayment extends StatefulWidget {
  const radioPayment({Key? key}) : super(key: key);

  @override
  _radioPaymentState createState() => _radioPaymentState();
}

class _radioPaymentState extends State<radioPayment> {
  int _selected = 1;
  @override
  Widget build(BuildContext context) {
    double screen;
    screen = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Container(
          width: screen,
          height: 72,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(15)),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: 64,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text('BCEL OnePay')
                  ],
                ),
                Radio(
                    value: 1,
                    groupValue: _selected,
                    onChanged: (int? val) {
                      print(val);
                      setState(() {
                        _selected = val!;
                        _selected = 1;
                      });
                    }),
              ],
            ),
          ),
        ),
        SizedBox(height: 15),
        Container(
          width: screen,
          height: 72,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(15)),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: 64,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text('*** **** **** 856')
                  ],
                ),
                Radio(
                    value: 2,
                    groupValue: _selected,
                    onChanged: (int? val) {
                      print(val);
                      setState(() {
                        _selected = val!;
                        _selected = 2;
                      });
                    }),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

// class Delivelyselect extends StatefulWidget {
//   const Delivelyselect({Key? key}) : super(key: key);

//   @override
//   _DelivelyselectState createState() => _DelivelyselectState();
// }

// class _DelivelyselectState extends State<Delivelyselect> {
//   int _selectedAddress = 1;
//   String imagesAddress = 'images/Headphones1.jpg';
//   String nameAddress = 'HAL Logistic';

//   @override
//   Widget build(BuildContext context) {
//     double screen;
//     screen = MediaQuery.of(context).size.width;
//     return
//   }
// }

//   AlertDialog radioDelively(double screen, BuildContext context) {
//     return
//   }
// }

// class radioAddress extends StatefulWidget {
//   const radioAddress({Key? key}) : super(key: key);

//   @override
//   _radioAddressState createState() => _radioAddressState();
// }

// class _radioAddressState extends State<radioAddress> {
//   final CratController controller = Get.find();
//   String village = 'Dongdok';
//   String District = 'Xaythany';
//   String province = 'Vientiane';
//   String AddressOffice = 'Phaxay, Sisattanak, Vientiane';
//   String PhoneNumber = '020 9222 9222';
//   final Mycontroller1 = TextEditingController();
//   final Mycontroller2 = TextEditingController();
//   final Mycontroller3 = TextEditingController();
//   final Mycontroller4 = TextEditingController();
//   int _selected = 1;
//   @override
//   Widget build(BuildContext context) {
//     double screen;
//     screen = MediaQuery.of(context).size.width;
//     return Scaffold(
//       backgroundColor: Colors.grey.shade200,
//       appBar: AppBar(
//         leading: GestureDetector(
//             onTap: () {
//               Navigator.pop(context);
//             },
//             child: Icon(
//               Icons.arrow_back,
//               color: Colors.grey.shade800,
//             )),
//         backgroundColor: Colors.white,
//         elevation: 0,
//         title: Text(
//           'Check Out',
//           style: TextStyle(color: Colors.black),
//         ),
//         centerTitle: true,
//         actions: [
//           Padding(
//             padding: const EdgeInsets.only(right: 20),
//             child: Icon(
//               Icons.shopping_cart,
//               color: Colors.grey.shade800,
//             ),
//           )
//         ],
//       ),
//       bottomNavigationBar: BottomAppBar(
//         child: Container(
//           decoration: BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.only(
//               topLeft: Radius.circular(20),
//               topRight: Radius.circular(20),
//             ),
//           ),
//           height: 220,
//           child: Container(
//               decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.only(
//                       topLeft: Radius.circular(25),
//                       topRight: Radius.circular(25))),
//               height: 220,
//               child: Padding(
//                 padding: const EdgeInsets.all(23.0),
//                 child: Column(
//                   children: [
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           'Total Product:',
//                           style: TextStyle(
//                             color: Color(0XFF9F9F9F),
//                             fontSize: 14,
//                           ),
//                         ),
//                         Text(
//                           '₭  ',
//                           style:
//                               TextStyle(fontSize: 15, color: Color(0xFFF2AF21)),
//                         )
//                       ],
//                     ),
//                     SizedBox(
//                       height: 10,
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           'Subtotal:',
//                           style: TextStyle(
//                             color: Color(0XFF9F9F9F),
//                             fontSize: 14,
//                           ),
//                         ),
//                         Text(
//                           '₭  ' + '${controller.total}',
//                           style: TextStyle(
//                               fontSize: 15,
//                               fontWeight: FontWeight.bold,
//                               color: Color(0xFFF2AF21)),
//                         )
//                       ],
//                     ),
//                     SizedBox(
//                       height: 15,
//                     ),
//                     Container(
//                       width: MediaQuery.of(context).size.width,
//                       height: 2,
//                       color: Colors.grey.shade300,
//                     ),
//                     SizedBox(
//                       height: 15,
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text('Current Total:',
//                             style: TextStyle(
//                                 color: Color(0XFF717171),
//                                 fontSize: 14,
//                                 fontWeight: FontWeight.bold)),
//                         Text(
//                           '₭  ' + '${controller.total}',
//                           style: TextStyle(
//                               fontSize: 15,
//                               fontWeight: FontWeight.bold,
//                               color: Color(0xFFF2AF21)),
//                         )
//                       ],
//                     ),
//                     SizedBox(
//                       height: 15,
//                     ),
//                     GestureDetector(
//                       onTap: () {
//                         // Navigator.push(context,
//                         //     MaterialPageRoute(builder: (context) => CheckOut()));
//                       },
//                       child: GestureDetector(
//                         onTap: () {
//                           Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                   builder: (context) => ContinueShopping(
//                                         Village: village,
//                                         District: District,
//                                         Province: province,
//                                         PhoneNumber: PhoneNumber,
//                                       )));
//                         },
//                         child: Container(
//                           alignment: Alignment.center,
//                           height: 46,
//                           width: MediaQuery.of(context).size.width,
//                           decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(23),
//                               color: Color(0XFFF2AF21)),
//                           child: Text('Place Order',
//                               style:
//                                   TextStyle(color: Colors.white, fontSize: 15)),
//                         ),
//                       ),
//                     )
//                   ],
//                 ),
//               )),
//         ),
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.only(left: 20, right: 20),
//           child: Column(
//             children: [
//               shippingAddress(),
//               Container(
//                 width: screen,
//                 height: 90,
//                 decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(15)),
//                 child: Padding(
//                   padding: const EdgeInsets.all(10.0),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Row(
//                             children: [
//                               Text(
//                                 'Home',
//                                 style: TextStyle(
//                                     fontSize: 15,
//                                     color: Color(0xFF717171),
//                                     fontWeight: FontWeight.bold),
//                               ),
//                               SizedBox(
//                                 width: 10,
//                               ),
//                               GestureDetector(
//                                 onTap: () {
//                                   showDialog(
//                                       context: context,
//                                       builder: (context) => AlertDialog(
//                                             shape: RoundedRectangleBorder(
//                                                 borderRadius:
//                                                     BorderRadius.circular(20)),
//                                             title: Container(
//                                               height: 360,
//                                               width: screen,
//                                               color: Colors.white,
//                                               alignment: Alignment.center,
//                                               child: Column(
//                                                 children: [
//                                                   Text('ຂໍ້ມູນທີ່ຢູ່'),
//                                                   SizedBox(
//                                                     height: 20,
//                                                   ),
//                                                   Container(
//                                                     height: 45,
//                                                     child: TextField(
//                                                       controller: Mycontroller1,
//                                                       decoration: InputDecoration(
//                                                           label: Text('ບ້ານ'),
//                                                           enabledBorder: OutlineInputBorder(
//                                                               borderSide: BorderSide(
//                                                                   color: Colors
//                                                                       .lightBlue,
//                                                                   width: 1)),
//                                                           focusedBorder: OutlineInputBorder(
//                                                               borderSide: BorderSide(
//                                                                   color: Colors
//                                                                       .lightBlue,
//                                                                   width: 1))),
//                                                     ),
//                                                   ),
//                                                   SizedBox(
//                                                     height: 20,
//                                                   ),
//                                                   Container(
//                                                     height: 45,
//                                                     child: TextField(
//                                                       controller: Mycontroller2,
//                                                       decoration: InputDecoration(
//                                                           label: Text('ເມືອງ'),
//                                                           enabledBorder: OutlineInputBorder(
//                                                               borderSide: BorderSide(
//                                                                   color: Colors
//                                                                       .lightBlue,
//                                                                   width: 1)),
//                                                           focusedBorder: OutlineInputBorder(
//                                                               borderSide: BorderSide(
//                                                                   color: Colors
//                                                                       .lightBlue,
//                                                                   width: 1))),
//                                                     ),
//                                                   ),
//                                                   SizedBox(
//                                                     height: 20,
//                                                   ),
//                                                   Container(
//                                                     height: 45,
//                                                     child: TextField(
//                                                       controller: Mycontroller3,
//                                                       decoration: InputDecoration(
//                                                           label: Text('ແຂວງ'),
//                                                           enabledBorder: OutlineInputBorder(
//                                                               borderSide: BorderSide(
//                                                                   color: Colors
//                                                                       .lightBlue,
//                                                                   width: 1)),
//                                                           focusedBorder: OutlineInputBorder(
//                                                               borderSide: BorderSide(
//                                                                   color: Colors
//                                                                       .lightBlue,
//                                                                   width: 1))),
//                                                     ),
//                                                   ),
//                                                   SizedBox(
//                                                     height: 20,
//                                                   ),
//                                                   Container(
//                                                     height: 45,
//                                                     child: TextField(
//                                                       keyboardType:
//                                                           TextInputType.number,
//                                                       controller: Mycontroller4,
//                                                       decoration: InputDecoration(
//                                                           label:
//                                                               Text('ໂທລະສັບ'),
//                                                           enabledBorder: OutlineInputBorder(
//                                                               borderSide: BorderSide(
//                                                                   color: Colors
//                                                                       .lightBlue,
//                                                                   width: 1)),
//                                                           focusedBorder: OutlineInputBorder(
//                                                               borderSide: BorderSide(
//                                                                   color: Colors
//                                                                       .lightBlue,
//                                                                   width: 1))),
//                                                     ),
//                                                   ),
//                                                   SizedBox(
//                                                     height: 20,
//                                                   ),
//                                                   ElevatedButton(
//                                                       onPressed: () {
//                                                         Navigator.pop(context);
//                                                         setState(() {
//                                                           village =
//                                                               Mycontroller1
//                                                                   .text;
//                                                           District =
//                                                               Mycontroller2
//                                                                   .text;
//                                                           province =
//                                                               Mycontroller3
//                                                                   .text;
//                                                           PhoneNumber =
//                                                               Mycontroller4
//                                                                   .text;
//                                                         });
//                                                       },
//                                                       child: Text("Ok"))
//                                                 ],
//                                               ),
//                                             ),
//                                           ));
//                                 },
//                                 child: Row(
//                                   children: [
//                                     Icon(
//                                       Icons.edit,
//                                       size: 15,
//                                       color: Color(0XFFF2AF21),
//                                     ),
//                                     Text('Edit',
//                                         style: TextStyle(
//                                             fontSize: 12,
//                                             color: Color(0xFF00ACE6),
//                                             fontWeight: FontWeight.bold))
//                                   ],
//                                 ),
//                               ),
//                             ],
//                           ),
//                           SizedBox(
//                             height: 3,
//                           ),
//                           Container(
//                             width: 280,
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Text(
//                                     'Address: ' +
//                                         village +
//                                         ', ' +
//                                         District +
//                                         ', ' +
//                                         province,
//                                     style: TextStyle(
//                                         fontSize: 12,
//                                         color: Color(0xFF717171))),
//                                 SizedBox(
//                                   height: 3,
//                                 ),
//                                 Text('Mobile: ' + ' ' + PhoneNumber,
//                                     style: TextStyle(
//                                         fontSize: 12,
//                                         color: Color(0xFF717171))),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                       Radio(
//                           value: 1,
//                           groupValue: _selected,
//                           onChanged: (int? val) {
//                             print(village +
//                                 ' ' +
//                                 District +
//                                 ' ' +
//                                 province +
//                                 ' ' +
//                                 PhoneNumber);
//                             setState(() {
//                               _selected = val!;
//                             });
//                           }),
//                     ],
//                   ),
//                 ),
//               ),
//               SizedBox(height: 15),
//               Container(
//                 width: screen,
//                 height: 72,
//                 decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(15)),
//                 child: Padding(
//                   padding: const EdgeInsets.all(10.0),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             'Office',
//                             style: TextStyle(
//                                 fontSize: 15,
//                                 color: Color(0xFF717171),
//                                 fontWeight: FontWeight.bold),
//                           ),
//                           SizedBox(
//                             height: 3,
//                           ),
//                           Text(AddressOffice,
//                               style: TextStyle(
//                                   fontSize: 12, color: Color(0xFFC7C7C7))),
//                           SizedBox(
//                             height: 2,
//                           ),
//                           Text('Mobile: +85620 9222 9222',
//                               style: TextStyle(
//                                   fontSize: 12, color: Color(0xFF717171))),
//                         ],
//                       ),
//                       Radio(
//                           value: 2,
//                           groupValue: _selected,
//                           onChanged: (int? val) {
//                             print(val);
//                             setState(() {
//                               _selected = val!;
//                             });
//                           }),
//                     ],
//                   ),
//                 ),
//               ),
//               Delively(),
//               Delivelyselect(),
//               PaymentMethod(),
//               radioPayment(),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

