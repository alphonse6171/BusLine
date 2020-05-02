//import './folder/search.dart';
//import './folder/u_register.dart';
//import './folder/s_register.dart';
//import './folder/result.dart';
//import 'package:busline1/screens/u_login.dart';
//import './folder/s_login.dart';
//import 'package:busline/screens/tab.dart';
import 'package:busline1/screens/u_login.dart';
//import 'package:busline1/screens/update.dart';
import 'package:flutter/material.dart';
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
         
      debugShowCheckedModeBanner: false,
      home: MyLoginPage(),
    );
  }
}

