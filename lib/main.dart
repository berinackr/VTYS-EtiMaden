import 'package:flutter/material.dart';
//import 'package:registration_login/screen/home_screen.dart';
//import 'package:registration_login/screen/login_screen.dart';
//import 'package:etimaden/login_screen.dart';
import 'package:etimaden/splash_screen.dart';
import 'package:etimaden/login_screen.dart';


var routes = <String, WidgetBuilder>{
  "/RegistrationScreen": (BuildContext context) => SplashScreen(),
  "/LoginScreen": (BuildContext context) => Login(),
  //"/HomeScreen": (BuildContext context) => HomeScreen(),
};

void main() => runApp(new MaterialApp(
    theme:
    ThemeData(primaryColor: Colors.deepPurple,primarySwatch: Colors.deepPurple,
        primaryColorDark: Colors.deepPurple),
    debugShowCheckedModeBanner: false,
    home: SplashScreen(),
    routes: routes));