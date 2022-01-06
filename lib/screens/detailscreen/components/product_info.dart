import 'package:flutter/material.dart';
import 'package:furniture_app_ui/constants.dart';
import 'package:furniture_app_ui/models/product.dart';
import 'package:furniture_app_ui/screens/detailscreen/components/product_color.dart';

class ProductInfo extends StatelessWidget {
  const ProductInfo({
    Key key,
    @required this.product,
    @required this.lightTextStyle,
  }) : super(key: key);

  final Product product;
  final TextStyle lightTextStyle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          height: 375,
          width: 150,
          //  color: Colors.grey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(product.category, style: lightTextStyle),
              SizedBox(
                height: 10,
              ),
              Text(
                product.title,
                // maxLines: 2,
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    letterSpacing: -0.6,
                    height: 1.4),
              ),
              SizedBox(
                height: 10,
              ),
              Text("Form", style: lightTextStyle),
              Text(
                "\$${product.price},",
                style: TextStyle(
                    fontSize: 16, fontWeight: FontWeight.bold, height: 1.6),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Available Colors",
                style: lightTextStyle,
              ),
              Row(
                children: [
                  buildColorBox(color: Color(0xFF7BA275), isActive: true),
                  buildColorBox(
                    color: Color(0xFFD7D7D7),
                  ),
                  buildColorBox(
                    color: kTextColor,
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
