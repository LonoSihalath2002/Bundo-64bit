import 'package:bundo/controller/cart_Contoller.dart';
import 'package:bundo/detail/detail.dart';
import 'package:bundo/detail/details.dart';
import 'package:bundo/models/prodyct_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Container justFroyouProduct() {
  return Container(
    margin: EdgeInsets.only(left: 25, right: 20, bottom: 20, top: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          child: Text(
            'Just For You',
            style: TextStyle(
                color: Color(0xff00ACE6),
                fontSize: 18,
                fontWeight: FontWeight.bold),
          ),
        ),
      ],
    ),
  );
}

class justforyouu extends StatelessWidget {
  justforyouu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      spacing: 20,
      runSpacing: 20,
      children: List.generate(
          Product.products.length,
          (index) => Stack(
                children: [
                  Container(
                    width: 156,
                    height: 216,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: GestureDetector(
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
                          child: Image.asset(
                            Product.products[index].image,
                            fit: BoxFit.cover,
                          ),
                        )),
                  ),
                  Positioned(
                      child: Container(
                    margin: EdgeInsets.only(top: 5),
                    width: 156,
                    height: 30,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            Container(
                                margin: EdgeInsets.only(right: 5),
                                width: 30,
                                child: Image.asset('images/Shipping.png')),
                            Image.asset('images/Salle.png'),
                          ],
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.favorite_border,
                              color: Colors.pink,
                            ))
                      ],
                    ),
                  )),
                  Positioned(
                    top: 155,
                    left: 8,
                    child: Container(
                      width: 140,
                      height: 51,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 5),
                            child: Column(
                              children: [
                                Container(
                                  width: 55,
                                  child: Row(
                                    children: [
                                      Text(
                                        Product.products[index].name,
                                        style: TextStyle(fontSize: 9),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 58,
                                  child: Row(
                                    children: [
                                      Text(
                                        '${Product.products[index].price}',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xFFF2AF21)),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 55,
                                  child: Row(
                                    children: [
                                      Container(
                                          width: 10,
                                          child: Image.asset('images/Star.png',
                                              color: Color(0XFF60DFFF))),
                                      Text(
                                        '4,9',
                                        style: TextStyle(
                                          fontSize: 9,
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          GestureDetector(
                              onTap: () {
                                showDialog(
                                    context: context,
                                    builder: (context) => AlertDialog(
                                          title: Container(
                                            height: 60,
                                            width: 210,
                                            color: Colors.white,
                                            alignment: Alignment.center,
                                            child: Column(
                                              children: [
                                                Container(
                                                  width: 29,
                                                  height: 29,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15),
                                                      border: Border.all(
                                                          width: 1,
                                                          color:
                                                              Colors.lightBlue),
                                                      color: Colors.white),
                                                  child: Icon(
                                                    Icons.check,
                                                    color: Colors.lightBlue,
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 5,
                                                ),
                                                Text(
                                                  'Item Successfully Added',
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      color: Color(0XFF4D4D4F)),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ));
                              },
                              child: Image.asset('images/Shopcart.png')),
                        ],
                      ),
                    ),
                  ),
                ],
              )),
    );
  }
}
