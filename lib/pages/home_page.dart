import "package:flutter/material.dart";

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return Scaffold(
          appBar: AppBar(
              title: Text("S-commerce")
          ),
          body: Center(
              child: Container(
                  child: Text("Welcome to my first flutter app")
              ),
          ),
          drawer: Drawer(),
      );
  }
}
