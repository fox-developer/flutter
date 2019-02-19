


import 'package:flutter/material.dart';
import 'package:mcarbys/pages/home_screen.dart';
import 'package:mcarbys/pages/splash_screen.dart';
import 'package:mcarbys/pages/no_screen.dart';

var routes = <String, WidgetBuilder>{
  "/home": (BuildContext context) => HomeScreen(),
   "/no":(BuildContext context) => NoScreen(),
};

void main() => runApp(new MaterialApp(
    theme:
        ThemeData(primaryColor: Colors.brown[900], accentColor: Colors.yellowAccent),
    debugShowCheckedModeBanner: false,
    home: SplashScreen(),
    routes: routes));
