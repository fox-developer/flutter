import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context){ 
  return MaterialApp(
    title: 'Splash Screen ',
    theme: ThemeData(
      primarySwatch: Colors.green,
    ),
    home: MySplashScreen(title: 'Flutter Splash Screen'),
  );}
}

class MySplashScreen extends StatefulWidget {
  @override 
  _MySplashScreen createState() => _MySplashScreen();
}

class _MySplashScreen State<MySplashScreen> {
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Splash Screen'),
      ),
    );
  }
}

