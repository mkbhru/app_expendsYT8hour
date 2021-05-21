import 'package:app_expends/pages/homepage.dart';
import 'package:app_expends/pages/loginpage.dart';
import 'package:app_expends/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(Myappp());
}

class Myappp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: Homepagee()
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        fontFamily: GoogleFonts.aBeeZee().fontFamily,
      ),

      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => Loginpage(),
        MyRoutes.loginroute: (context) => Loginpage(),
        MyRoutes.homeroute: (context) => Homepagee(),
      },
    );
  }
}
