import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'dart:io';

class HomeScreen extends StatefulWidget {
  @override
  HomeScreenState createState() {
    return HomeScreenState();
  }
}

class HomeScreenState extends State<HomeScreen> {


      



      // WillPopScope

    @override
  Widget build(BuildContext context){

    Future<bool> _onBackPressed(){
        Timer(Duration(microseconds: 500),() => exit(0),
        );
      }
    return Scaffold(

      backgroundColor: Colors.brown,

      body: WillPopScope (
      
      onWillPop: _onBackPressed,
      
      child: Container(
        
        padding: EdgeInsets.only(top: 23.0),
        child: WebviewScaffold(
        url: "https://mcarbys.com/",
        withLocalStorage: true,
        hidden: true,
        scrollBar: false,
        
        appCacheEnabled: true,
        withJavascript: true,
      )
        
   
      
      
    ),
    )

    ); 
    
  }
}