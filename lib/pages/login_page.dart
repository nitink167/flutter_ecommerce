import 'package:ecommerce/utils/routes.dart';
import "package:flutter/material.dart";

class LoginPage extends StatefulWidget {

  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();

}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changedButton = false;

  final _formKey = GlobalKey<FormState>();

  moveToHomePage(BuildContext, context) async {
      if(_formKey.currentState!.validate()) {
          setState(() {
              changedButton = true;
          });

          await Future.delayed(Duration(seconds: 1));
          await Navigator.pushNamed(context, MyRoutes.homeRoute);

          setState(() {
              changedButton = false;
          });
      }

  }

  @override
  Widget build(BuildContext context) {
      return Material(
          color: Colors.white,
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
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
                        "Welcome $name",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold
                        )
                      ),
                      SizedBox(
                        height: 20
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical:16.0, horizontal: 32),
                        child: Column(
                          children: [
                            TextFormField(
                                validator: (value) {
                                  if(value!.isEmpty) {
                                    return "Username cannot be empty";
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                    hintText: "Enter a unique Username",
                                    labelText: "Username"
                                ),
                                onChanged: (value) {
                                  setState(() {
                                    name = value;
                                  });
                                },
                            ),
                            TextFormField(
                                obscureText: true,
                                validator: (value) {
                                    if(value!.isEmpty) {
                                        return "Password cannot be empty";
                                    } else if (value.length < 6) {
                                        return "Password must be more than 6";
                                    }
                                    return null;
                                },
                                decoration: InputDecoration(
                                    hintText: "Enter Password",
                                    labelText: "Password"
                                ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                             Material(
                                 color: Colors.blueGrey,
                                 borderRadius: BorderRadius.circular(50),
                                 child: InkWell(
                                    onTap: () => moveToHomePage(BuildContext, context),
                                    child: AnimatedContainer(
                                        duration: Duration(seconds: 1),
                                        alignment: Alignment.center ,
                                        height: 50,
                                        width: changedButton ? 50 : 150,
                                        child: changedButton ? Icon(Icons.done, color: Colors.white) : Text(
                                            "Login",
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white
                                            ),
                                        ),
                                    ),
                                 ),
                             )
                          ],
                        ),
                      )
                  ],
              ),
            ),
          )
      );
  }
}
