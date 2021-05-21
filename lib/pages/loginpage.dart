import 'package:flutter/material.dart';

class Loginpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Column(
          children: [
            Image.asset("assets/images/login_image.png"),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter Usernamee",
                      labelText: "Username  ",
                    ),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter Password",
                      labelText: "Password ",
                    ),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                print("Red Bull");
              },
              child: Text("Login"),
              style: TextButton.styleFrom(),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "welcome",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ));
  }
}
