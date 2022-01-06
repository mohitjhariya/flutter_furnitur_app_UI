import 'package:flutter/material.dart';
import 'package:furniture_app_ui/screens/homescreen/home_screen.dart';
import 'package:furniture_app_ui/screens/homescreen/homepage_categorie/categories_product.dart';
import 'package:furniture_app_ui/screens/homescreen/recomnanded/recomanded_product.dart';
import 'package:furniture_app_ui/services/fatch_catagories.dart';
import 'package:furniture_app_ui/services/fatch_products.dart';
import 'package:furniture_app_ui/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(kpadding / 2),
            child: TitleText(
              title: "Browse by Categories",
            ),
          ),
          FutureBuilder(
              future: fatchCategories(),
              builder: (context, snapshot) => snapshot.hasData
                  ? Categories(
                      catrgories: snapshot.data,
                    )
                  : Center(
                      child: Image.asset('images/ripple.gif'),
                    )),
          Divider(
            height: 5,
          ),
          Padding(
            padding: EdgeInsets.all(kpadding / 2),
            child: TitleText(
              title: "Recomnands For You",
            ),
          ),
          FutureBuilder(
              future: fetchProducts(),
              builder: (context, snapshot) {
                //print(snapshot.data);
                return snapshot.hasData
                    ? RecomnandProduct(
                        products: snapshot.data,
                      )
                    : Center(
                        child: Image.asset(
                        "images/ripple.gif",
                      ));
              })
        ],
      ),
    );
  }
}
