// import 'package:flutter/material.dart';

// class SizeConfig {
//   static MediaQueryData _madiaQueryData;
//   static double screenWidth;
//   static double screenHeight;
//   static double defaultSize;
//   static Orientation orientation;

//   void init(BuildContext context) {
//     _madiaQueryData = MediaQuery.of(context);
//     screenWidth = _madiaQueryData.size.width;
//     screenHeight = _madiaQueryData.size.height;
//     orientation = _madiaQueryData.orientation;

//     defaultSize = orientation == Orientation.landscape
//         ? screenHeight * 0.024
//         : screenWidth * 0.024;
//   }
// }

import 'package:flutter/material.dart';

class SizeConfig {
  static MediaQueryData _mediaQueryData;
  static double screenWidth;
  static double screenHeight;
  static double defaultSize;
  static Orientation orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;
    // On iPhone 11 the defaultSize = 10 almost
    // So if the screen size increase or decrease then our defaultSize also vary
    defaultSize = orientation == Orientation.landscape
        ? screenHeight * 0.024
        : screenWidth * 0.024;
  }
}

const kpadding = 20;
