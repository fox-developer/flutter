
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:flutter/material.dart';
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

    
    return WebviewScaffold(
      appBar: AppBar(
        title: Text("             McArby's Cill & Grill",style: TextStyle(color: Colors.white),textAlign: TextAlign.center,),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.brown[900],
      ),
        url: "https://mcarbys.com/",
        withLocalStorage: true,
        hidden: true,
        scrollBar: false,
        
        appCacheEnabled: true,
        withJavascript: true,
      );
    
  }
}
