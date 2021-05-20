import 'package:flutter/material.dart';

void main() {
  runApp(Myappp());
}

class Myappp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Material(
        child: Center(
          child: Container(
            child: Text(
              "My name is Manish Kumar",
            ),
          ),
        ),
      ),
    );
  }
}
