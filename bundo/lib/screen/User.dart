import 'package:bundo/widgets/checkOut/Contineu_Order_widget.dart';
import 'package:flutter/material.dart';

class User_Screen extends StatefulWidget {
  const User_Screen({Key? key}) : super(key: key);

  @override
  _User_ScreenState createState() => _User_ScreenState();
}

class _User_ScreenState extends State<User_Screen> {
  @override
  Widget build(BuildContext context) {
    double screen;
    screen = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.grey.shade700,
              size: 30,
            )),
        backgroundColor: Colors.white,
        elevation: 0,
        title: searchr(screen),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.pink),
                ),
                SizedBox(
                  width: 20,
                ),
                Text('Add Luangaphay')
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.person,
                      color: Colors.lightBlue,
                    )),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'My Account',
                      style: TextStyle(color: Colors.grey.shade700),
                    ))
              ],
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.map, color: Colors.lightBlue)),
                TextButton(
                    onPressed: () {},
                    child: Text('Shipping Address',
                        style: TextStyle(color: Colors.grey.shade700)))
              ],
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.payment, color: Colors.lightBlue)),
                TextButton(
                    onPressed: () {},
                    child: Text('Payment',
                        style: TextStyle(color: Colors.grey.shade700)))
              ],
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.shopping_bag, color: Colors.lightBlue)),
                TextButton(
                    onPressed: () {},
                    child: Text('My Orders',
                        style: TextStyle(color: Colors.grey.shade700)))
              ],
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.favorite, color: Colors.lightBlue)),
                TextButton(
                    onPressed: () {},
                    child: Text('My Wishlist',
                        style: TextStyle(color: Colors.grey.shade700)))
              ],
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.follow_the_signs_sharp,
                        color: Colors.lightBlue)),
                TextButton(
                    onPressed: () {},
                    child: Text('Followed Store',
                        style: TextStyle(color: Colors.grey.shade700)))
              ],
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.settings, color: Colors.lightBlue)),
                TextButton(
                    onPressed: () {},
                    child: Text('Setting',
                        style: TextStyle(color: Colors.grey.shade700)))
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.center,
              width: screen,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.pink, borderRadius: BorderRadius.circular(25)),
              child: Text(
                'Logout',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Center searchr(double screen) {
  return Center(
    child: Container(
      width: screen * 0.80,
      child: TextFormField(
        style: TextStyle(
          fontSize: 14,
          height: 3,
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
      height: 45,
    ),
  );
}
