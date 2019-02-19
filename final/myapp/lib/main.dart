import 'package:flutter/material.dart';
import 'package:myapp/pages/home_screen.dart';
import 'package:myapp/pages/splash_screen.dart';
import 'package:myapp/pages/no_screen.dart';

var routes = <String, WidgetBuilder>{
  "/home": (BuildContext context) => HomeScreen(),
   "/no":(BuildContext context) => NoScreen(),
};

void main() => runApp(new MaterialApp(
    theme:
        ThemeData(primaryColor: Colors.brown, accentColor: Colors.yellowAccent),
    debugShowCheckedModeBanner: false,
    home: SplashScreen(),
    routes: routes));
