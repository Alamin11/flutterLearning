import 'package:flutter/material.dart';
import 'package:flutter_card/pages/home_page.dart';
import 'package:flutter_card/pages/login_page.dart';
import 'package:flutter_card/utility/routes.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Dart data types
    // int days = 30;
    // String name = "Al amin";
    // double fractionNumber = 30.25;
    // bool isMaster = true;
    // num anyNumber = 20.33;
    // var anyType = "We can put here if the type is unknown";

    // const pi = 3.1416;
    // final editable = 20;

    return MaterialApp(
      //home: HomePage(),
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        fontFamily: GoogleFonts.lato().fontFamily,
        //primaryColor: Colors.amberAccent,
      ),
      //initialRoute: "/home_page",
      routes: {
        MyRoutes.loginRoute: (context) => const LoginPage(),
        // "/login_page": (context) => const Login_page(),
        MyRoutes.homeRoute: (context) => const HomePage(),
      },
    );
  }
}
