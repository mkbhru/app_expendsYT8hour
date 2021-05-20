import 'package:flutter/material.dart';

class Homepagee extends StatelessWidget {
  final days = 45;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alpha App"),
      ),
      body: Center(
        child: Container(
          child: Text(
            "My name is Manish $days Kumar",
          ),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
