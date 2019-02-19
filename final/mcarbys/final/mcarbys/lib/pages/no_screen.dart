import 'package:flutter/material.dart';

class NoScreen extends StatefulWidget {
  @override
  NoScreenState createState() {
    return NoScreenState();
  }
}

class NoScreenState extends State<NoScreen> {

    @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("No Connection",textAlign: TextAlign.center,) ,
        
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Please connect to the internet",textAlign: TextAlign.center,style: TextStyle(
          color: Colors.brown,
          fontSize: 20.0,
        )),
          ],
        ),
      )
    );
  }
}