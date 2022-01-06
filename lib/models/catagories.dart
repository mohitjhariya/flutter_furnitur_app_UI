import 'package:flutter/material.dart';

class Category {
  final String id, titlt, image;
  final int numOfProduct;

  Category({this.id, this.titlt, this.image, this.numOfProduct});

  factory Category.formJsoin(Map<String, dynamic> json) {
    return Category(
      id: json["id"],
      titlt: json["title"],
      image: json["image"],
      numOfProduct: json["numOfProduct"],
    );
  }
}

Category category = Category(
  id: "1",
  image: "https://i.imgur.com/JqKDdxj.png",
  titlt: "Armchair",
  numOfProduct: 100,
);
