import 'package:flutter/material.dart';
import 'package:furniture_app_ui/models/product.dart';
import 'package:furniture_app_ui/screens/detailscreen/details_screen.dart';
import 'package:furniture_app_ui/screens/homescreen/recomnanded/product_card.dart';

import '../../../size_config.dart';

class RecomnandProduct extends StatelessWidget {
  const RecomnandProduct({this.products});

  final List<Product> products;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kpadding / 2),
      child: GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: products.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              childAspectRatio: 0.693),
          itemBuilder: (context, index) => ProductCard(
                product: products[index],
                press: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Detailx(
                                product: products[index],
                              )));
                },
              )),
    );
  }
}
