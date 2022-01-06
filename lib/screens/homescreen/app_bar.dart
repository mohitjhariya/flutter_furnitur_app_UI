import 'package:flutter/material.dart';
import 'package:furniture_app_ui/constants.dart';

AppBar buildAppBar() {
  return AppBar(
    leading: IconButton(
      icon: Icon(
        Icons.menu,
        color: Colors.black,
      ),
      onPressed: () {},
    ),
    actions: [
      IconButton(
          onPressed: () {},
          icon: Icon(Icons.scanner_outlined, color: Colors.black)),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Text(
            "Scan",
            style: TextStyle(
              color: kTextColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    ],
  );
}
