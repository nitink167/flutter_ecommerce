import 'package:ecommerce/utils/routes.dart';
import "package:flutter/material.dart";
import 'package:ecommerce/pages/home_page.dart';
import 'package:ecommerce/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        // fontFamily: GoogleFonts.lato().fontFamily
      ),
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        // fontFamily: GoogleFonts.lato().fontFamily
      ),
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage()
      }
    );
  }
}