import 'package:flutter/material.dart';

import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
class AboutScreen extends StatefulWidget {
  @override
  NoScreenState createState() {
    return NoScreenState();
  }
}

class NoScreenState extends State<AboutScreen> {

    @override
  Widget build(BuildContext context){
    return WebviewScaffold(
      appBar: AppBar(
        title: Text("             McArby's Cill & Grill",style: TextStyle(color: Colors.white),textAlign: TextAlign.center,),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.brown[900],
      ),
        url: "https://mcarbys.com/about",
        withLocalStorage: true,
        hidden: true,
        scrollBar: false,
        
        appCacheEnabled: true,
        withJavascript: true,
      );
  }
}