import 'package:flutter/material.dart';
import 'dart:io';
import 'package:mcarbys/utils/mcarbys.dart';

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

	static void goToIntro(BuildContext context) {

    try {
      if (Mcarbys.ok == true){
        goToHome(context);
    } 
    else{
        Navigator.pushNamed(context,"/intro");
        Mcarbys.ok = true;
    }   

    }
    on Exception{
      print('error i am fine');
      Navigator.pushNamed(context,"/intro");
    }

		
	}
}