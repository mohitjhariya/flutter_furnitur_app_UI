import 'package:flutter/material.dart';
import 'package:furniture_app_ui/constants.dart';
import 'package:furniture_app_ui/models/product.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({@required this.product, this.press});

  final Product product;
  final press;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxHeight: 300),
      padding: EdgeInsets.only(top: 50, left: 20, right: 20),
      height: 500,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15), topRight: Radius.circular(15))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            product.subTitle,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            product.description,
            style: TextStyle(color: kTextColor.withOpacity(0.7), height: 1.5),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            width: double.infinity,
            child: FlatButton(
                padding: EdgeInsets.all(10),
                color: kPrimaryColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
                onPressed: press,
                child: Text(
                  "Add to Cart",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                )),
          )
        ],
      ),
    );
  }
}
