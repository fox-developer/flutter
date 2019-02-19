import 'package:flutter/material.dart';
import 'dart:io';

class MyNavigator {
	static void goToHome(BuildContext context) async{
    try{
      final result =await InternetAddress.lookup('www.google.com');
        if (result.isNotEmpty){
          print('connected');
          Navigator.pushNamed(context, "/home");
        }
        else{
          print('not connected');
          Navigator.pushNamed(context, "/no");
        }
    }
    on Exception{
      print('error i am fine');
      Navigator.pushNamed(context, "/no");
    }
	}

	
}