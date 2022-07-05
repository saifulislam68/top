import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login/screens/auth/sign_in.dart';
import 'package:login/screens/auth/sign_up.dart';
import 'package:login/screens/DetailPages/top_news.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          AppBar(
            title: Text(
              'Category',
              style: GoogleFonts.lora(color: Colors.black),
            ),
            backgroundColor: Colors.white,
            automaticallyImplyLeading: false,
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home Page'),
            onTap: () {
              Navigator.of(context).pushReplacementNamed('/');
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.star),
            title: Text('Popular'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => TopNews())));
              // Navigator.of(context)
              //     .pushReplacementNamed(OrdersScreen.routeName);
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.sports_cricket),
            title: Text('Sports News'),
            onTap: () {
              // Navigator.of(context)
              //     .pushReplacementNamed(UserProductsScreen.routeName);
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Sign Up'),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: ((context) => SignUp())));
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.login),
            title: Text('Sign In'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => LoginPage())));
            },
          ),
        ],
      ),
    );
  }
}
