import 'package:flutter/material.dart';

class Containbox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.greenAccent,
      child: Center(
        child: Text('Hello Flutter', style: TextStyle(fontSize: 40.0)),
      ),
    );
  }
}
