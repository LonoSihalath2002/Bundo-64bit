import 'package:bundo/screen/User.dart';
import 'package:flutter/material.dart';

 AppBar Appbarr(BuildContext context, double screen) {
    return AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Image.asset(
          'images/Logo1.png',
          width: 150,
        ),
        leading: IconButton(
          icon: Image.asset('images/bars.png'),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => User_Screen()));
          },
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: search(screen),
        ),
        actions: [
          Stack(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(right: 10),
                child: IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    'images/Lakhung.png',
                  ),
                ),
              ),
              Positioned(
                top: -5.0,
                left: 10.0,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.brightness_1,
                    color: Colors.orange,
                    size: 13.0,
                  ),
                ),
              ),
            ],
          ),
        ],
      );
  }

Center search(double screen) {
  return Center(
    child: Container(
      margin: EdgeInsets.only(top: 10),
      width: screen * 0.90,
      child: TextFormField(
        style: TextStyle(
          fontSize: 14,
          height: 1.0,
        ),
        decoration: InputDecoration(
          hintText: 'Search for anyting',
          hintStyle: TextStyle(
            fontSize: 13,
            color: Colors.grey,
          ),
          suffixIcon: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.orange,
            ),
            child: IconButton(
              onPressed: () {
                print('Lono Sihalath');
              },
              icon: Icon(
                Icons.search,
                color: Colors.white,
                size: 30,
              ),
            ),
            width: 40,
            height: 20,
          ),
          filled: true,
          fillColor: Color(0xFFecf0f1),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(
                color: Colors.white,
              )),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(
                color: Colors.white,
              )),
        ),
      ),
      height: 60,
    ),
  );
}