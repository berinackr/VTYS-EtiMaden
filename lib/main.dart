import 'package:etimaden/Secenek_Ekleme_Screen.dart';
import 'package:etimaden/operator_home_screen.dart';
import 'package:etimaden/yonetici_home_screen.dart';
import 'package:etimaden/sevkler_screen.dart';
import 'package:etimaden/yonetici_home_screen.dart';
import 'package:etimaden/yurtici_yonetici_screen.dart';
import 'package:flutter/material.dart';
//import 'package:registration_login/screen/home_screen.dart';
//import 'package:registration_login/screen/login_screen.dart';
//import 'package:etimaden/login_screen.dart';
import 'package:etimaden/splash_screen.dart';
import 'package:etimaden/login_screen.dart';
import 'package:etimaden/operator_home_screen.dart';

var routes = <String, WidgetBuilder>{
  "/RegistrationScreen": (BuildContext context) => SplashScreen(),
  "/LoginScreen": (BuildContext context) => Login(),
  "/SevklerScreen": (BuildContext context) => SevklerScreen(),
  "/YoneticiHome": (BuildContext context) => YoneticiHome(),
  "/OperatorHome": (BuildContext context) => OperatorHome(),
  "/SecenekEkleme": (BuildContext context) => SecenekScreen(),
  "/OperatorPage": (BuildContext context) => OperatorPage(),

};

void main() => runApp(new MaterialApp(
    theme:
    ThemeData(primaryColor: Colors.deepPurple,primarySwatch: Colors.deepPurple,
        primaryColorDark: Colors.deepPurple),
    debugShowCheckedModeBanner: false,
    home: SplashScreen(),
    routes: routes));