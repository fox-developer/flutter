import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mcarbys/utils/navigator.dart';

class SplashScreen extends StatefulWidget{
  @override
  _SplashScreenState createState() => _SplashScreenState();

}

class _SplashScreenState extends State<SplashScreen>{
  @override
  void initState(){
    
    super.initState();
    Timer(Duration(seconds: 3),() => MyNavigator.goToHome(context));
  }

@override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Colors.brown[900]),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                
                child: Container(
                  
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    
                    children: <Widget>[

                     Padding(
                      padding: EdgeInsets.only(top: 30.0),

                    ),
                      
                      Image.asset('assets/icon/logo.png',height: 250, width: 300,),
                      
                     
                      
                     
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircularProgressIndicator(),
                    /** Padding(
                      padding: EdgeInsets.only(top: 20.0),

                    ),*/
                   
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
