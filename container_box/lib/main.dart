import 'package:flutter/material.dart';
import 'containbox.dart';

void main(){
  runApp(MyContainer());
}

class MyContainer extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Container',
      home: Containbox(),
    );
  }
}