import 'dart:convert';

import 'package:furniture_app_ui/models/catagories.dart';
import 'package:http/http.dart' as http;

Future<List<Category>> fatchCategories() async {
  const String apiUrl =
      "https://5f210aa9daa42f001666535e.mockapi.io/api/categories";

  final respons = await http.get(apiUrl);

  if (respons.statusCode == 200) {
    // print(respons);
    List<Category> categories = (json.decode(respons.body) as List)
        .map((data) => Category.formJsoin(data))
        .toList();
    //print(categories);
    return categories;
  } else {
    throw Exception("fales to load");
  }
}
