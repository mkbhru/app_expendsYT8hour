import 'package:app_expends/pages/homepage.dart';
import 'package:app_expends/pages/loginpage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Myappp());
}

class Myappp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: Homepagee()
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      initialRoute: "/home",
      routes: {
        "/": (context) => Loginpage(),
        "/login": (context) => Loginpage(),
        "/home": (context)=>Homepagee(),
      },
    );
  }
}
