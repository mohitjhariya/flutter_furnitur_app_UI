import 'package:flutter/material.dart';
import 'package:furniture_app_ui/screens/homescreen/app_bar.dart';
import 'package:furniture_app_ui/screens/homescreen/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }
}

class CustomClipPath extends CustomClipper<Path> {
  // var radius = 10.0;
  @override
  Path getClip(Size size) {
    Path path = Path();
    double height = size.height;
    double width = size.width;
    double cornerSize = 30;

    path.lineTo(0, height - cornerSize);

    path.quadraticBezierTo(0, height, cornerSize, height);

    path.lineTo(width - cornerSize, height);
    path.quadraticBezierTo(width, height, width, height - cornerSize);
    path.lineTo(width, cornerSize);
    path.quadraticBezierTo(width, 0, width - cornerSize, 0);
    path.lineTo(cornerSize, cornerSize * 0.75);
    path.quadraticBezierTo(0, cornerSize, 0, cornerSize * 2);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class TitleText extends StatelessWidget {
  final String title;
  const TitleText({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
    );
  }
}
