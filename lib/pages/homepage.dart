import 'package:flutter/material.dart';

class Homepagee extends StatelessWidget {
  final days = 45;
  @override// here it signifies that whatever we are writing here is
  //is over rides over the default code
  Widget build(BuildContext context) {
    //here wisdet is type of return thing like the void
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
