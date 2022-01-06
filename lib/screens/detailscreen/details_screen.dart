import 'package:flutter/material.dart';
import 'package:furniture_app_ui/constants.dart';
import 'package:furniture_app_ui/models/product.dart';
import 'package:furniture_app_ui/screens/detailscreen/components/appbar.dart';
import 'package:furniture_app_ui/screens/detailscreen/components/detail_body.dart';
import 'package:furniture_app_ui/size_config.dart';

class Detailx extends StatefulWidget {
  final Product product;

  const Detailx({@required this.product});

  @override
  _DetailxState createState() => _DetailxState();
}

class _DetailxState extends State<Detailx> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: DetailsBody(
        product: widget.product,
      ),
    );
  }
}
