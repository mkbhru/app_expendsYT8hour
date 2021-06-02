import 'package:app_expends/routes/routes.dart';
import 'package:flutter/material.dart';

class Loginpage extends StatefulWidget {
  @override
  _LoginpageState createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  String name = "";
  bool changeButton = false;
  final _formkey = GlobalKey<FormState>();
  moveTohome(BuildContext context) async {
    if (_formkey.currentState.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(
          context, MyRoutes.homeroute);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.pink[100],
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/images/login_image.png",
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Form(
                  key: _formkey,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "welcome \n $name",
                          style: TextStyle(
                            fontSize: 34,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            hintText: "Enter Usernamee",
                            labelText: "Username  "),
                        validator: (value) {
                          if (value.isEmpty) {
                            return "username can not be Empty ";
                          }
                          return null;
                        },
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        },
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Enter Password",
                          labelText: "Password ",
                        ),
                        validator: (value) {
                          if (value.isEmpty) {
                            return "username can not be Empty ";
                          } else if (value.length < 7) {
                            return "Password length must greater  than 8";
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                ),
              ),
              Material(
                color: Colors.blue,
                borderRadius: changeButton
                    ? BorderRadius.circular(50)
                    : BorderRadius.circular(8),
                child: InkWell(
                  onTap: () => moveTohome(context),
                  child: AnimatedContainer(
                    //animated button wants material as an ensaster to deploy
                    // all its all .functionalities

                    duration: Duration(seconds: 1),
                    width: changeButton ? 50 : 100,
                    height: 40,
                    alignment: Alignment.center,
                    // decoration: BoxDecoration(
                    //   borderRadius: changeButton
                    // /      ? BorderRadius.circular(50)
                    //       : BorderRadius.circular(8),
                    //   color: Colors.deepPurple,
                    //now decoration should not be here for goodness
                    // ),
                    child: changeButton
                        ? Icon(
                            Icons.done,
                            color: Colors.white,
                          )
                        : Text(
                            "Login",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
