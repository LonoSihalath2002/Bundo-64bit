import 'package:flutter/material.dart';

 Container imageMain(double screen) {
    return Container(
      margin: EdgeInsets.all(25),
      width: screen * 1,
      height: screen * 0.32,
      child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.asset(
            'images/Main.jpeg',
            fit: BoxFit.cover,
          )),
    );
  }

  Container featuredProduct() {
    return Container(
      margin: EdgeInsets.only(left: 25, right: 20,),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Text(
              'Featured Products',
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

 Widget FeatureProcuct(String image) => Stack(
        children: [
          Container(
            margin: EdgeInsets.only(right: 35),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.white,
              ),
              width: 155,
              height: 155,
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              )),
          Positioned(
              top: 10.0,
              left: 55.0,
              child: Text(
                'Featured Phone',
                style: TextStyle(
                  color: Color(0xff00ACE6),
                  fontSize: 12,
                ),
              )),
          Positioned(
              top: 40.0,
              left: 90.0,
              child: Text(
                'Xiaomi',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              )),
          Positioned(
              top: 60.0,
              left: 77.0,
              child: Text(
                'Mi MiX4',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w600),
              )),
          Positioned(
            top: 90.0,
            left: 90.0,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.orange,
              ),
              width: 40,
              height: 40,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '15%',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ],
      );
//////////////FeatureProcuct2//////////////////
  Widget FeatureProcuct2(String image) => Stack(
        children: [
          Container(
            margin: EdgeInsets.only(right: 35),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.white,
              ),
              width: 155,
              height: 155,
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              )),
          Positioned(
              top: 10.0,
              left: 10.0,
              child: Text(
                'Promotion of the week',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                ),
              )),
          Positioned(
              top: 30.0,
              left: 10.0,
              child: Text(
                'SLT Speaker',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              )),
          Positioned(
            top: 80.0,
            left: 10.0,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.orange,
              ),
              width: 52,
              height: 52,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Buy 1\nGet 1',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ],
      );
//////////////FeatureProcuct3//////////////////
  Widget FeatureProcuct3(String image) => Stack(
        children: [
          Container(
               margin: EdgeInsets.only(right: 35),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.white,
              ),
              width: 155,
              height: 155,
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              )),
          Positioned(
            top: 60.0,
            left: 20.0,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color(0xFFE64072),
              ),
              width: 50,
              height: 30,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '-30%',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ],
      );
//////////////FeatureProcuct4//////////////////
  Widget FeatureProcuct4(String image) => Stack(
        children: [
          Container(
            margin: EdgeInsets.only(right: 30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.white,
              ),
              width: 155,
              height: 155,
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              )),
        ],
      );
