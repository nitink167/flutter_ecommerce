import 'package:ecommerce/utils/routes.dart';
import "package:flutter/material.dart";

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return Material(
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
                children: [
                    Image.asset(
                      "assets/images/login_image.png",
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Welcome to S-commerce",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold
                      )
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical:16.0, horizontal: 32),
                      child: Column(
                        children: [
                          TextFormField(
                              decoration: InputDecoration(
                                  hintText: "Enter User-name",
                                  labelText: "Username"
                              ),
                          ),
                          TextFormField(
                              obscureText: true,
                              decoration: InputDecoration(
                                  hintText: "Enter Password",
                                  labelText: "Password"
                              ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          ElevatedButton(
                              onPressed: () {
                                  Navigator.pushNamed(context, MyRoutes.homeRoute);
                              },
                              child: Text(
                                  "Login to the app",
                              ),
                              style: TextButton.styleFrom(minimumSize: Size(130, 40))
                          ),
                          Text("Are you new? please Signup here")
                        ],
                      ),
                    )
                ],
            ),
          )
      );
  }
}
