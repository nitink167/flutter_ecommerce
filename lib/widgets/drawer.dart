import "package:flutter/material.dart";

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageURL = "https://nitink167.github.io/assets/img/logo.jpg";
     
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text("Nitin Kumar"),
                accountEmail: Text("nitinkumar@gmail.com"),
                currentAccountPicture: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.network(
                    imageURL,
                    height: 150.0,
                    width: 100.0,
                    fit: BoxFit.fill,
                  ),
                )
              )
          )
        ],
      ),
    );
  }
}
