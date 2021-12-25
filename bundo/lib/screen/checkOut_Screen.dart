import 'package:bundo/controller/cart_Contoller.dart';
import 'package:bundo/screen/Continue.dart';
import 'package:bundo/widgets/checkOut/checkout_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckOutScreen extends StatefulWidget {
  const CheckOutScreen({Key? key}) : super(key: key);

  @override
  _CheckOutScreenState createState() => _CheckOutScreenState();
}

class _CheckOutScreenState extends State<CheckOutScreen> {
  final CratController controller = Get.find();
  String village = 'Dongdok';
  String District = 'Xaythany';
  String province = 'Vientiane';
  String AddressOffice = 'Phaxay, Sisattanak, Vientiane';
  String PhoneNumber = '020 9222 9222';
  final Mycontroller1 = TextEditingController();
  final Mycontroller2 = TextEditingController();
  final Mycontroller3 = TextEditingController();
  final Mycontroller4 = TextEditingController();
  String _selected = 'Home';
  int _selectedAddress = 1;
  String imagesAddress = 'images/Headphones1.jpg';
  String nameAddress = 'HAL Logistic';
  @override
  Widget build(BuildContext context) {
    double screen;
    screen = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.grey.shade600,
            size: 30,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Check Out',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(
              Icons.shopping_cart,
              color: Colors.grey.shade800,
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
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
                    GestureDetector(
                      onTap: () {
                        // Navigator.push(context,
                        //     MaterialPageRoute(builder: (context) => CheckOut()));
                      },
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ContinueShopping(
                                        Village: village,
                                        District: District,
                                        Province: province,
                                        PhoneNumber: PhoneNumber,
                                        title: _selected.toString(),
                                        imagesAddress: imagesAddress,
                                        nameAddress: nameAddress,
                                      )));
                        },
                        child: Container(
                          alignment: Alignment.center,
                          height: 46,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(23),
                              color: Color(0XFFF2AF21)),
                          child: Text('Place Order',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15)),
                        ),
                      ),
                    )
                  ],
                ),
              )),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              shippingAddress(),
              Container(
                width: screen,
                height: 90,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Home',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Color(0xFF717171),
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              GestureDetector(
                                onTap: () {
                                  showDialog(
                                      context: context,
                                      builder: (context) => AlertDialog(
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(20)),
                                            title: Container(
                                              height: 360,
                                              width: screen,
                                              color: Colors.white,
                                              alignment: Alignment.center,
                                              child: Column(
                                                children: [
                                                  Text('ຂໍ້ມູນທີ່ຢູ່'),
                                                  SizedBox(
                                                    height: 20,
                                                  ),
                                                  Container(
                                                    height: 45,
                                                    child: TextField(
                                                      controller: Mycontroller1,
                                                      decoration: InputDecoration(
                                                          label: Text('ບ້ານ'),
                                                          enabledBorder: OutlineInputBorder(
                                                              borderSide: BorderSide(
                                                                  color: Colors
                                                                      .lightBlue,
                                                                  width: 1)),
                                                          focusedBorder: OutlineInputBorder(
                                                              borderSide: BorderSide(
                                                                  color: Colors
                                                                      .lightBlue,
                                                                  width: 1))),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 20,
                                                  ),
                                                  Container(
                                                    height: 45,
                                                    child: TextField(
                                                      controller: Mycontroller2,
                                                      decoration: InputDecoration(
                                                          label: Text('ເມືອງ'),
                                                          enabledBorder: OutlineInputBorder(
                                                              borderSide: BorderSide(
                                                                  color: Colors
                                                                      .lightBlue,
                                                                  width: 1)),
                                                          focusedBorder: OutlineInputBorder(
                                                              borderSide: BorderSide(
                                                                  color: Colors
                                                                      .lightBlue,
                                                                  width: 1))),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 20,
                                                  ),
                                                  Container(
                                                    height: 45,
                                                    child: TextField(
                                                      controller: Mycontroller3,
                                                      decoration: InputDecoration(
                                                          label: Text('ແຂວງ'),
                                                          enabledBorder: OutlineInputBorder(
                                                              borderSide: BorderSide(
                                                                  color: Colors
                                                                      .lightBlue,
                                                                  width: 1)),
                                                          focusedBorder: OutlineInputBorder(
                                                              borderSide: BorderSide(
                                                                  color: Colors
                                                                      .lightBlue,
                                                                  width: 1))),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 20,
                                                  ),
                                                  Container(
                                                    height: 45,
                                                    child: TextField(
                                                      keyboardType:
                                                          TextInputType.number,
                                                      controller: Mycontroller4,
                                                      decoration: InputDecoration(
                                                          label:
                                                              Text('ໂທລະສັບ'),
                                                          enabledBorder: OutlineInputBorder(
                                                              borderSide: BorderSide(
                                                                  color: Colors
                                                                      .lightBlue,
                                                                  width: 1)),
                                                          focusedBorder: OutlineInputBorder(
                                                              borderSide: BorderSide(
                                                                  color: Colors
                                                                      .lightBlue,
                                                                  width: 1))),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 20,
                                                  ),
                                                  ElevatedButton(
                                                      onPressed: () {
                                                        Navigator.pop(context);
                                                        setState(() {
                                                          village =
                                                              Mycontroller1
                                                                  .text;
                                                          District =
                                                              Mycontroller2
                                                                  .text;
                                                          province =
                                                              Mycontroller3
                                                                  .text;
                                                          PhoneNumber =
                                                              Mycontroller4
                                                                  .text;
                                                        });
                                                      },
                                                      child: Text("Ok"))
                                                ],
                                              ),
                                            ),
                                          ));
                                },
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.edit,
                                      size: 15,
                                      color: Color(0XFFF2AF21),
                                    ),
                                    Text('_Edit',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Color(0xFF00ACE6),
                                            fontWeight: FontWeight.bold))
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Container(
                            width: 280,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                    'Address: ' +
                                        village +
                                        ', ' +
                                        District +
                                        ', ' +
                                        province,
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Color(0xFF717171))),
                                SizedBox(
                                  height: 3,
                                ),
                                Text('Mobile: ' + ' ' + PhoneNumber,
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Color(0xFF717171))),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Radio(
                          value: 'Home',
                          groupValue: _selected,
                          onChanged: (String? val) {
                            print(village +
                                ' ' +
                                District +
                                ' ' +
                                province +
                                ' ' +
                                PhoneNumber);
                            setState(() {
                              _selected = val!;
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
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Office',
                            style: TextStyle(
                                fontSize: 15,
                                color: Color(0xFF717171),
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(AddressOffice,
                              style: TextStyle(
                                  fontSize: 12, color: Color(0xFFC7C7C7))),
                          SizedBox(
                            height: 2,
                          ),
                          Text('Mobile: +85620 9222 9222',
                              style: TextStyle(
                                  fontSize: 12, color: Color(0xFF717171))),
                        ],
                      ),
                      Radio(
                          value: 'Office',
                          groupValue: _selected,
                          onChanged: (String? val) {
                            print(val);
                            setState(() {
                              _selected = val!;
                            });
                          }),
                    ],
                  ),
                ),
              ),
               Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Delivery Service',
              style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF717171),
                  fontWeight: FontWeight.bold),
            ),
            TextButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      backgroundColor: Colors.grey.shade100,
                      content: Container(
                        width: screen,
                        height: 370,
                        child: Column(
                          children: [
                            Text(
                              'Delivery Service',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.grey.shade700,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Container(
                              width: screen,
                              height: 60,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15)),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          width: 64,
                                          height: 40,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            child: Image.asset(
                                              'images/Headphones1.jpg',
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 15),
                                        Text('HAL Logistic',
                                            style: TextStyle(fontSize: 14)),
                                      ],
                                    ),
                                    Radio(
                                        value: 1,
                                        groupValue: _selectedAddress,
                                        onChanged: (int? val) {
                                          print(val);
                                          setState(() {
                                            _selectedAddress = val!;
                                            imagesAddress = 'images/Headphones1.jpg';
                                            nameAddress = 'HAL Logistic';
                                            Navigator.pop(context);
                                          });
                                        }),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              width: screen,
                              height: 60,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15)),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          width: 64,
                                          height: 40,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            child: Image.asset(
                                              'images/Headphones2.jpg',
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Text(
                                          'Anousith Express',
                                          style: TextStyle(fontSize: 14),
                                        ),
                                      ],
                                    ),
                                    Radio(
                                        value: 2,
                                        groupValue: _selectedAddress,
                                        onChanged: (int? val) {
                                          print(val);
                                          setState(() {
                                            _selectedAddress = val!;
                                            imagesAddress = 'images/Headphones2.jpg';
                                            nameAddress = 'Anousith Express';
                                            Navigator.pop(context);
                                          });
                                        }),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              width: screen,
                              height: 60,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15)),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          width: 64,
                                          height: 40,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            child: Image.asset(
                                              'images/Headphones3.jpg',
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Text(
                                          'Meexay Express',
                                          style: TextStyle(fontSize: 14),
                                        ),
                                      ],
                                    ),
                                    Radio(
                                        value: 3,
                                        groupValue: _selectedAddress,
                                        onChanged: (int? val) {
                                          print(val);
                                          setState(() {
                                            _selectedAddress = val!;
                                            imagesAddress = 'images/Headphones3.jpg';
                                            nameAddress = 'Meexay Express';
                                            Navigator.pop(context);
                                          });
                                        }),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              width: screen,
                              height: 60,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15)),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          width: 64,
                                          height: 40,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            child: Image.asset(
                                              'images/Headphones.png',
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Text(
                                          'Flash Express',
                                          style: TextStyle(fontSize: 14),
                                        ),
                                      ],
                                    ),
                                    Radio(
                                        value: 4,
                                        groupValue: _selectedAddress,
                                        onChanged: (int? val) {
                                          print(val);
                                          setState(() {
                                            _selectedAddress = val!;
                                            imagesAddress = 'images/Headphones.png';
                                            nameAddress = 'Flash Express';
                                            Navigator.pop(context);
                                          });
                                        }),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
                child: Text('+ Edit',
                    style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFF00ACE6),
                        fontWeight: FontWeight.bold)))
          ],
        ),
        Container(
          width: 500,
          height: 60,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(15)),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Container(
                  width: 64,
                  height: 40,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
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
      ],
    ),
              PaymentMethod(),
              radioPayment(),
            ],
          ),
        ),
      ),
    );
  }
}
