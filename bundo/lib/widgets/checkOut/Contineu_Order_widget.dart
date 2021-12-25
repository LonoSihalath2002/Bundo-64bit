
import 'package:flutter/material.dart';

AppBar Custom_appbar_contineu(BuildContext context, double screen) {
    return AppBar(
  elevation: 0,
  backgroundColor: Colors.white,
  centerTitle: true,
  title: Image.asset(
    'images/Logo1.png',
    width: 150,
  ),
  leading: IconButton(
    icon: Icon(Icons.arrow_back, color: Colors.grey.shade600,size: 30,),
    onPressed: () => Navigator.pop(context),
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


 BottomAppBar BottomApp(BuildContext context) {
    return BottomAppBar(
      child: Container(
        height: 125,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Container(
                          alignment: Alignment.center,
                          height: 46,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(23),
                              color: Color(0XFFF2AF21)),
                          child: Text('Continue Shopping',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15)),
                        ),
            ],
          ),
        )
        ),
    );
  }


  Column OrderPlaced() {
    return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Order Placed',
                style: TextStyle(
                    fontSize: 15,
                    color: Color(0xFF717171),
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                'Placed on Sep 2021 09:43:00',
                style: TextStyle(fontSize: 12, color: Color(0xFFc7c7c7)),
              ),
              SizedBox(
                height: 2,
              ),
              Row(
                children: [
                  Text(
                    'Order ID: 433 522 654 234',
                    style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFF717171),
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.copy_sharp,
                    size: 15,
                    color: Colors.lightBlue,
                  )
                ],
              )
            ],
          );
  }

