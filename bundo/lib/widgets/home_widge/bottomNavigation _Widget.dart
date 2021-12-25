import 'package:bundo/screen/Signin_Screen.dart';
import 'package:flutter/material.dart';

Container mainbottomNavigationbar(BuildContext context) {
  return Container(
    height: 65,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: 35,
          width: 60,
          decoration: BoxDecoration(
              color: Color(0xffE2F8FF),
              borderRadius: BorderRadius.circular(30)),
          child: FlatButton(
            onPressed: () {},
            child: Image.asset(
              'images/Home.png',
              color: Colors.blue,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(right: 50),
          height: 35,
          width: 60,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
          child: FlatButton(
            onPressed: () {},
            child: Image.asset('images/Chat.png'),
          ),
        ),
        Container(
          height: 35,
          width: 60,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
          child: FlatButton(
            onPressed: () {},
            child: Image.asset('images/Jai.png'),
          ),
        ),
        Container(
          height: 35,
          width: 60,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
          child: FlatButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
            },
            child: Image.asset('images/Profile.png'),
          ),
        ),
      ],
    ),
  );
}
