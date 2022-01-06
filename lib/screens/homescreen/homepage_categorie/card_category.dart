import 'package:flutter/material.dart';
import 'package:furniture_app_ui/constants.dart';
import 'package:furniture_app_ui/models/catagories.dart';
import 'package:furniture_app_ui/screens/homescreen/home_screen.dart';

import 'package:furniture_app_ui/size_config.dart';

class CardCategory extends StatelessWidget {
  final Category category;
  const CardCategory({
    Key key,
    this.category,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kpadding / 2),
      child: SizedBox(
        width: 205,
        child: AspectRatio(
          aspectRatio: 0.83,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                  // color: Colors.blueAccent,
                  ),
              ClipPath(
                clipper: CustomClipPath(),
                child: AspectRatio(
                  aspectRatio: 1.025,
                  child: Container(
                    padding: EdgeInsets.all(20),
                    color: kSecondaryColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TitleText(
                          title: category.titlt,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "1000+ products",
                          style: TextStyle(
                            color: kTextColor.withOpacity(0.6),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: AspectRatio(
                    aspectRatio: 1.15,
                    child: FadeInImage.assetNetwork(
                        placeholder: "images/spinner.gif",
                        image: category.image),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
