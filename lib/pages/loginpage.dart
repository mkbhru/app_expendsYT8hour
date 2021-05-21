import 'package:flutter/material.dart';

class Loginpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Text(
          "login page",
          style: TextStyle(
              fontSize: 45, color: Colors.blue, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
