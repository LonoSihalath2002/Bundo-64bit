import 'dart:convert';

import 'package:bundo/api/Api.dart';
import 'package:bundo/screen/Signin_Screen.dart';
import 'package:bundo/screen/home.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController name = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  _register() async {
    var data = {
      'name': name.text,
      'phone': phone.text,
      'email': email.text,
      'password': password.text,
    };
    // debugPrint(name.text);
    // debugPrint(emailController.text);
    // debugPrint(passController.text);
    // debugPrint(repassController.text);

    var res = await CallApi().postData(data, 'register');
    var body = json.decode(res.body);
    print(body);
    if (body['success']) {
      //SharedPreferences localStorage = await SharedPreferences.getInstance();
      // localStorage.setString('token', body['token']);
      //localStorage.setString('user', json.encode(body['user']));
      Navigator.push(context,
          new MaterialPageRoute(builder: (context) => CatalogScreen()));
    }
  }

  @override
  Widget build(BuildContext context) {
    double screen;
    screen = MediaQuery.of(context).size.width;
    return Scaffold(
        floatingActionButton: buttonClose(),
        floatingActionButtonLocation: FloatingActionButtonLocation.miniStartTop,
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage('images/Background.jpg'),
            fit: BoxFit.cover,
          )),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  signinSignup(),
                  inputname(screen),
                  inputPhon(screen),
                  SizedBox(
                    height: 15,
                  ),
                  inputPhonenumber(screen),
                  inputCode(screen),
                  buttonSignup(screen),
                  dontGetthecode(),
                  signUpwithEmail(),
                ],
              ),
            ),
          ),
        ));
  }

  Container signUpwithEmail() {
    return Container(
        height: 30,
        decoration: BoxDecoration(
            border:
                Border(bottom: BorderSide(color: Colors.white, width: 0.8))),
        margin: EdgeInsets.only(top: 40),
        child: TextButton(
          onPressed: () {},
          child: Text(
            'Sign Up with E-mail',
            style: TextStyle(color: Colors.white),
          ),
        ));
  }

  Container dontGetthecode() {
    return Container(
      height: 30,
      margin: EdgeInsets.only(top: 20),
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.white, width: 0.8))),
      child: TextButton(
        onPressed: () {},
        child: Text(
          'Dodn t get the code?',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  Container buttonClose() {
    return Container(
      width: 30,
      child: FloatingActionButton(
        child: Icon(
          Icons.close,
          color: Colors.blue,
        ),
        backgroundColor: Colors.white,
        onPressed: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => Login())),
      ),
    );
  }

  Container buttonSignup(double screen) {
    return Container(
      height: 40,
      margin: EdgeInsets.only(top: 16),
      width: screen * 0.80,
      child: RaisedButton(
        color: Color(0xffF2AF21),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        onPressed: () {
          _register();
        },
        child: Text(
          'Sign Up',
          style: TextStyle(color: Colors.white, fontSize: 17),
        ),
      ),
    );
  }

  Container inputname(double screen) {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
      ),
      margin: EdgeInsets.only(top: 16),
      width: screen * 0.80,
      child: TextFormField(
        controller: name,
        style: TextStyle(height: 0.8),
        decoration: InputDecoration(
          hintText: 'name',
          hintStyle: TextStyle(fontSize: 13),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(color: Colors.white),
          ),
        ),
      ),
    );
  }

  Container inputPhon(double screen) {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
      ),
      margin: EdgeInsets.only(top: 16),
      width: screen * 0.80,
      child: TextFormField(
        controller: phone,
        style: TextStyle(height: 0.8),
        decoration: InputDecoration(
          hintText: 'phone',
          hintStyle: TextStyle(fontSize: 13),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(color: Colors.white),
          ),
        ),
      ),
    );
  }

  Container inputPhonenumber(double screen) {
    return Container(
      padding: EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
      ),
      width: screen * 0.80,
      child: TextFormField(
        controller: email,
        style: TextStyle(height: 0.8),
        decoration: InputDecoration(
          suffixIcon: Container(
            width: 120,
            height: 55,
            decoration: BoxDecoration(
                color: Colors.pink, borderRadius: BorderRadius.circular(30)),
            child: TextButton(
              onPressed: () {},
              child: Text(
                'Send code',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          hintText: 'email',
          hintStyle: TextStyle(
            fontSize: 13,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(30),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(color: Colors.white),
          ),
        ),
      ),
    );
  }

  Container inputCode(double screen) {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
      ),
      margin: EdgeInsets.only(top: 16),
      width: screen * 0.80,
      child: TextFormField(
        controller: password,
        style: TextStyle(height: 0.8),
        decoration: InputDecoration(
          hintText: 'password',
          hintStyle: TextStyle(fontSize: 13),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(color: Colors.white),
          ),
        ),
      ),
    );
  }

  Container signinSignup() {
    double screen;
    screen = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.only(top: screen * 0.50, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: TextButton(
              onPressed: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Login())),
              child: Text(
                'Login',
                style: TextStyle(color: Colors.white, fontSize: 17),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.white, width: 3),
              ),
            ),
            padding: EdgeInsets.only(left: 10, right: 10),
            child: TextButton(
              onPressed: () {},
              child: Text(
                'Sign up',
                style: TextStyle(color: Colors.white, fontSize: 17),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
