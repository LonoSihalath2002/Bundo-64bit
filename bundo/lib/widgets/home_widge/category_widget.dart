import 'package:flutter/material.dart';

 Container category(String image) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      width: 87,
      height: 87,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Image.asset(image),
    );
  }