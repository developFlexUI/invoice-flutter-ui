import 'package:flutter/material.dart';

class ScreenConfig {
  static double deviceWidth;
  static double deviceHeight;
  static double designHeight = 1300;
  static double designWidth = 600;
  static init(BuildContext context) {
    deviceWidth = MediaQuery.of(context).size.width;
    deviceHeight = MediaQuery.of(context).size.height;
  }

  // Designer user 1300 device height,
  // so I have to normalize to the device height
  static double getProportionalHeight(height) {
    return (height / designHeight) * deviceHeight;
  }

  static double getProportionalWidth(width) {
    return (width / designWidth) * deviceWidth;
  }
}

// Colors
const iPrimarryColor = Color(0xFFF9FCFF);
const iAccentColor = Color(0xFFFFB44B);
const iAccentColor2 = Color(0xFFFFEAC9);

const demoData = [
  {
    "imagePath": "assets/images/image-1.png",
    "price": 5,
    "quantity": 2,
    "itemDesc": "Gingerbread Cake with orange cream chees"
  },
  {
    "imagePath": "assets/images/image-3.png",
    "price": 10,
    "quantity": 4,
    "itemDesc": "Sauteed Onion and Hotdog with Ketchup"
  },
  {
    "imagePath": "assets/images/image-2.png",
    "price": 14,
    "quantity": 1,
    "itemDesc": "Supreme Pizza Recipe"
  }
];
