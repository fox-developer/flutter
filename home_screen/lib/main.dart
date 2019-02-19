import 'package:flutter/material.dart';
import 'package:home_screen/pages/splash_screen.dart';
void main() => runApp(new MaterialApp(
    theme:
        ThemeData(primaryColor: Colors.red, accentColor: Colors.greenAccent),
    debugShowCheckedModeBanner: false,
    home: SplashScreen(),
    ));