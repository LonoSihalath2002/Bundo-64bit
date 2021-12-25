import 'package:flutter/material.dart';


  Container onSaleProduct() {
    return Container(
      margin: EdgeInsets.only(left: 25, right: 20,),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Text(
              'On Sale Products',
              style: TextStyle(
                  color: Color(0xff00ACE6),
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            children: [
              Container(
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'See All',
                    style: TextStyle(
                      fontSize: 15,
                      color: Color(0xff00ACE6),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }


Stack onsaleProduct(String image, name, int prite) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(
            right: 15,
          ),
          width: 132,
          height: 177,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: Colors.white),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              )),
        ),
        Positioned(
            child: Container(
          margin: EdgeInsets.only(top: 5, left: 7),
          width: 132,
          height: 30,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset('images/Salle.png'),
              Container(width: 30, child: Image.asset('images/Shipping.png')),
              Container(
                padding: EdgeInsets.all(0),
                child: IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border, color: Colors.pink,))),
            ],
          ),
        )),
        Positioned(
          top: 128,
          left: 8,
          child: Container(
            width: 116,
            height: 41,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 2),
                  child: Column(
                    children: [
                      Container(
                        width: 55,
                        child: Row(
                          children: [
                            Text(
                              name,
                              style: TextStyle(fontSize: 10),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 58,
                        child: Row(
                          children: [
                            Text(
                              '$prite',
                              style: TextStyle(
                                  fontSize: 11,
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
                                width: 8,
                                child: Image.asset('images/Star.png',
                                    color: Color(0XFF60DFFF))),
                            Text(
                              '4,9',
                              style: TextStyle(
                                fontSize: 8,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Image.asset('images/Shopcart.png'),
              ],
            ),
          ),
        ),
      ],
    );
  }