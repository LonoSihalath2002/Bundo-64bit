import 'package:bundo/screen/Signup_Screen.dart';
import 'package:bundo/screen/home.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool stutusRedEye = true;
  @override
  Widget build(BuildContext context) {
    double screen;
    screen = MediaQuery.of(context).size.width;
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.miniStartTop,
      floatingActionButton: buttonClose(context),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/Background.jpg'), fit: BoxFit.cover)),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                signinSignup(screen),
                inputName(screen),
                inputPassword(screen),
                buttonLogin(screen),
                forgetPassword(),
                orcontinueWith(),
                login(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container buttonClose(BuildContext context) {
    return Container(
      width: 30,
      child: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () =>  Navigator.push(context, MaterialPageRoute(builder: (context) => CatalogScreen())),
          child: Icon(Icons.close, color: Colors.blue,),
        
      ),
    );
  }

  Container login() {
    return Container(
      padding: EdgeInsets.all(0.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 45,
            child: FlatButton(
              padding: EdgeInsets.all(0.0),
              onPressed: () {},
              child: Image.asset('images/Facebook.png'),
            ),
          ),
          Container(
            width: 45,
            child: FlatButton(
              padding: EdgeInsets.all(0.0),
              onPressed: () {},
              child: Image.asset('images/Google.png'),
            ),
          ),
        ],
      ),
    );
  }

  Container orcontinueWith() {
    return Container(
      padding: EdgeInsets.only(top: 26),
      child: TextButton(
        onPressed: () {},
        child: Text(
          '__________ Or continue with __________',
          style: TextStyle(color: Colors.white, fontSize: 14),
        ),
      ),
    );
  }

  Container forgetPassword() {
    return Container(
      margin: EdgeInsets.only(top: 10),
      height: 40,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.white, width: 1),
        ),
      ),
      child: TextButton(
          onPressed: () {},
          child: Text(
            'Forget Password',
            style: TextStyle(fontSize: 15, color: Colors.white),
          )),
    );
  }

  Container signinSignup(double screen) {
    return Container(
      margin: EdgeInsets.only(bottom: 20, top: screen*0.35),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.white, width: 3),
              ),
            ),
            padding: EdgeInsets.only(right: 10, left: 10),
            child: TextButton(
              onPressed: () {},
              child: Text(
                'Login',
                style: TextStyle(fontSize: 17, color: Colors.white),
              ),
            ),
          ),
          Container(
            //margin: EdgeInsets.only(left: screen*0.20),
            padding: EdgeInsets.only(left: 10, right: 10),
            child: TextButton(
              onPressed: () =>  Navigator.push(context, MaterialPageRoute(builder: (context) => Signup())),
              child: Text(
                'sign up',
                style: TextStyle(fontSize: 17, color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }

  Container buttonLogin(double screen) {
    return Container(
      width: screen * 0.80,
      margin: EdgeInsets.only(top: 16),
      height: 40,
      child: RaisedButton(
        color: Color(0xffF2AF21),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        onPressed: () => Navigator.pushNamed(context, '/test'),
        child: Text(
          'Login',
          style: TextStyle(fontSize: 17, color: Colors.white),
        ),
      ),
    );
  }

  Container inputName(double screen) {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
      ),
      width: screen * 0.80,
      child: TextField(
        style: TextStyle(height: 0.8),
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: 'Username / Email / Phone Number',
            hintStyle: TextStyle(fontSize: 13, color: Colors.grey),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(40),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(40),
            )),
      ),
    );
  }

  Container inputPassword(double screen) {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(30)),
      width: screen * 0.80,
      margin: EdgeInsets.only(top: 16),
      child: TextField(
        style: TextStyle(height: 0.8),
        obscureText: stutusRedEye,
        decoration: InputDecoration(
            suffixIcon: IconButton(
              icon: stutusRedEye
                  ? Icon(Icons.remove_red_eye)
                  : Icon(Icons.remove_red_eye_outlined),
              onPressed: () {
                setState(() {
                  stutusRedEye = !stutusRedEye;
                });
              },
            ),
            hintText: 'Password',
            hintStyle: TextStyle(fontSize: 13, color: Colors.grey),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(40),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(40),
            )),
      ),
    );
  }

  Container background() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue,
      ),
    );
  }
}
