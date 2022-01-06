import 'package:flutter/material.dart';
import 'package:furniture_app_ui/constants.dart';
import 'package:furniture_app_ui/models/product.dart';
import 'package:furniture_app_ui/screens/detailscreen/components/product_discraption.dart';
import 'package:furniture_app_ui/screens/detailscreen/components/product_info.dart';
import 'package:furniture_app_ui/screens/detailscreen/details_screen.dart';

class DetailsBody extends StatelessWidget {
  final Product product;

  const DetailsBody({
    @required this.product,
  });
  @override
  Widget build(BuildContext context) {
    TextStyle lightTextStyle = TextStyle(color: kTextColor.withOpacity(0.6));
    return SingleChildScrollView(
      child: SizedBox(
        width: double.infinity,
        height: 700 - AppBar().preferredSize.height,
        child: Stack(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProductInfo(product: product, lightTextStyle: lightTextStyle),
            Positioned(
              top: 375,
              left: 0,
              right: 0,
              child: ProductDescription(
                product: product,
                press: () {},
              ),
            ),
            Positioned(
                top: 95,
                left: 75,
                child: Hero(
                  tag: product.id,
                  child: Image.network(
                    product.image,
                    height: 378,
                    fit: BoxFit.cover,
                    width: 364,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
