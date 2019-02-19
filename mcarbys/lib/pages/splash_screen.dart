import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mcarbys/utils/mcarbys.dart';
import 'package:mcarbys/utils/my_navigator.dart';

class SplashScreen extends StatefulWidget{
  @override
  _SplashScreenState createState() => _SplashScreenState();

}

class _SplashScreenState extends State<SplashScreen>{
  @override
  void initState(){
    
    super.initState();
    Timer(Duration(seconds: 5),() => MyNavigator.goToHome(context));
  }

@override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Colors.brown),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        Mcarbys.ulogo,
                        
                      textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.yellow,
                            fontWeight: FontWeight.bold,
                            fontSize: 44.0),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 5.0),
                      ),
                      Text(
                        Mcarbys.llogo,
                        
                      textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.yellow,
                            fontWeight: FontWeight.bold,
                            fontSize: 28.0),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 30.0),
                      ),
                      
                      Padding(
                        padding: EdgeInsets.only(top: 20.0),
                      ),
                      Text(
                        Mcarbys.last,
                        
                      textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontStyle: FontStyle.italic,
                            fontSize: 22.0),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircularProgressIndicator(),
                    Padding(
                      padding: EdgeInsets.only(top: 20.0),

                    ),
                   
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
