import 'package:flutter/material.dart';
import 'package:flutter_tutorials/home.dart';
import 'package:flutter_tutorials/about.dart';
import 'package:flutter_tutorials/login.dart';
import 'package:flutter_tutorials/signup.dart';
import 'package:flutter_tutorials/horizonal.dart';
import 'package:flutter_tutorials/alertdialog.dart';
// import 'package:flutter_tutorials/stepdemo.dart';
import 'package:flutter_tutorials/tabdemo.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: new HomePage(title: 'Home'),
      home: new Tabdemo(),
      routes: <String, WidgetBuilder>{
        '/home': (BuildContext context) => new HomePage(),
        '/about': (BuildContext context) => new AboutPage(),
        '/login': (BuildContext context) => new LoginPage(),
        '/signup': (BuildContext context) => new SignUp(),
        '/horizonal': (BuildContext context) => new Horizonal(),
        '/dialog': (BuildContext context) => new AlertDialogDemo(),
      },
    );
  }
}
