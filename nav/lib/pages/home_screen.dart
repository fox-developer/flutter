import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

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
      
        url: "https://mcarbys.com/",
        withLocalStorage: true,
        hidden: true,
        scrollBar: false,
        
        appCacheEnabled: true,
        withJavascript: true,
      );
    
  }
}
