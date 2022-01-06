import 'package:flutter/material.dart';

Padding buildColorBox({
  Color color,
  bool isActive = false,
}) {
  return Padding(
    padding: const EdgeInsets.all(3),
    child: Container(
      margin: EdgeInsets.only(top: 10, right: 10),
      //  padding: EdgeInsets.all(5),
      height: 24,
      width: 24,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(6)),
      child: isActive
          ? Icon(
              Icons.check,
              color: Colors.white,
            )
          : SizedBox(),
    ),
  );
}
