import 'package:flutter/material.dart';

 Container poppularProduct() {
    return Container(
      margin: EdgeInsets.only(left: 25, right: 20, bottom: 5, top: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Text(
              'Popular Products',
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