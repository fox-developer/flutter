import 'dart:io';
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:connectivity/connectivity.dart';

void main() => runApp(MaterialApp(
  home: MyApp(),
  debugShowCheckedModeBanner: false,
  theme: ThemeData(primarySwatch: Colors.purple),
));

class MyApp extends StatefulWidget{
  @override
  _MyAppState createState() => _MyAppState();
}



class _MyAppState extends State<MyApp> {
  @override
  void get_data() async{
    try{
        final result =await InternetAddress.lookup('www.google.com');
        if (result.isNotEmpty){
          print('connected');
        }
        else{
          print('not connected');
        }
    }
    on Exception{
      print('error');
    }

    }
  
  @override
  Widget build(BuildContext context){
    return WebviewScaffold(
      
      url: "https://mcarbys.com/",
      withLocalStorage: true,
    );
  }
}