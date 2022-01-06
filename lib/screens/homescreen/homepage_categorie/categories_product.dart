import 'package:flutter/material.dart';
import 'package:furniture_app_ui/models/catagories.dart';
import 'package:furniture_app_ui/screens/homescreen/homepage_categorie/card_category.dart';

class Categories extends StatelessWidget {
  const Categories({
    Key key,
    this.catrgories,
  }) : super(key: key);

  final List<Category> catrgories;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          children: List.generate(
              catrgories.length,
              (index) => CardCategory(
                    category: catrgories[index],
                  ))),
    );
  }
}
