

import 'package:flutter/material.dart';


class SplashScreen extends StatefulWidget{
  @override
  _SplashScreenState createState() => _SplashScreenState();

}


class _SplashScreenState extends State<SplashScreen>{
  @override
  void initState(){
    
    super.initState();
  }

  @override
  Widget build(BuildContext context){
    return DecoratedBox(
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage('assets/game.jpg'),
        fit: BoxFit.cover,
        
        
      ),
      
    ),
  );
  }
}