import 'package:flutter/material.dart';

class FavoriteProduct extends StatefulWidget {
  const FavoriteProduct({Key? key}) : super(key: key);

  @override
  _FavoriteProductState createState() => _FavoriteProductState();
}

class _FavoriteProductState extends State<FavoriteProduct> {
  bool liked = false;
  _pressed() {
    setState(() {
      liked = !liked;
    });
  }

  @override
  Widget build(BuildContext context) {
    double screen;
    screen = MediaQuery.of(context).size.width;
    return Container(
      width: 35,
      child: IconButton(
        onPressed: () => _pressed(),
        icon: Icon(
          liked ? Icons.favorite : Icons.favorite_outline,
          color: liked ? Colors.pink : Colors.pink,
        ),
      ),
    );
  }
}
