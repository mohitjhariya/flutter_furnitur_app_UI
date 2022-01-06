import 'package:flutter/material.dart';
import 'package:furniture_app_ui/size_config.dart';

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    leading: IconButton(
      icon: Icon(
        Icons.arrow_back,
        color: Colors.black,
      ),
      onPressed: () {
        Navigator.pop(context);
      },
    ),
    actions: [
      IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.card_giftcard,
            color: Colors.black,
          )),
      SizedBox(
        width: SizeConfig.defaultSize,
      )
    ],
  );
}
