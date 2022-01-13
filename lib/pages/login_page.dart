import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_card/utility/routes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/images/login_image.png"),
            const SizedBox(
              height: 20.0,
            ),
            const Text(
              "Welcome!!!",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 28,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Enter Username",
                      labelText: "Username",
                    ),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: "Enter Password",
                      labelText: "Password",
                    ),
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  ElevatedButton(
                    child: const Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    style: TextButton.styleFrom(minimumSize: Size(150.0, 45.0)),
                    onPressed: () {
                      // ignore: avoid_print
                      //print("Onpressed button clicked");
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
