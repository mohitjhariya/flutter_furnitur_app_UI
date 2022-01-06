import 'package:flutter/material.dart';
import 'package:furniture_app_ui/constants.dart';
import 'package:furniture_app_ui/models/product.dart';
import 'package:furniture_app_ui/size_config.dart';

import '../home_screen.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({this.product, this.press});

  final Product product;
  final Function press;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        // height: 200,
        width: 145,
        decoration: BoxDecoration(
            color: kSecondaryColor, borderRadius: BorderRadius.circular(30)),
        child: AspectRatio(
          aspectRatio: 0.693,
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 1,
                child: Hero(
                  tag: product.id,
                  child: FadeInImage.assetNetwork(
                    placeholder: "images/spinner.gif",
                    image: product.image,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: kpadding / 2),
                child: TitleText(
                  title: product.title,
                ),
              ),
              SizedBox(height: kpadding / 2),
              Text("\$${product.price}"),
              Spacer()
            ],
          ),
        ),
      ),
    );
  }
}
