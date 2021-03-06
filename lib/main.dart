import 'package:flutter/material.dart';
import 'package:furniture_app_ui/constants.dart';
import 'package:furniture_app_ui/screens/homescreen/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Furniture App',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        textTheme:
            GoogleFonts.dmSansTextTheme().apply(displayColor: kTextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primarySwatch: Colors.blue,
        appBarTheme: AppBarTheme(
            brightness: Brightness.light,
            elevation: 0.0,
            color: Colors.transparent),
      ),
      home: HomeScreen(),
    );
  }
}
