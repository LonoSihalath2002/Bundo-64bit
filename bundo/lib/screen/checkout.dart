// import 'package:bundo/controller/cart_Contoller.dart';
// import 'package:bundo/screen/Continue.dart';
// import 'package:bundo/widgets/checkOut/checkout_widget.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class CheckOut extends StatelessWidget {
//   final CratController controller = Get.find();
//   CheckOut({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey.shade200,
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
//                                   builder: (context) => ContinueShopping(Village:,)));
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
//       appBar: AppBar(
//         leading: Icon(Icons.arrow_back, color: Colors.grey.shade800,),
//         backgroundColor: Colors.white,
//         elevation: 0,
//         title: Text('Check Out', style: TextStyle(color: Colors.black),),
//         centerTitle: true,
//         actions: [
//           Padding(
//             padding: const EdgeInsets.only(right: 20),
//             child: Icon(Icons.shopping_cart, color: Colors.grey.shade800,),
//           )
//         ],
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding:
//               const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
//           child: Column(
//             children: [
//               shippingAddress(),
//               radioAddress(),
//               Delively(),
//               Delivelyselect(),
//               PaymentMethod(),
//               radioPayment()
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
