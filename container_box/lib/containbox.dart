import 'package:flutter/material.dart';

class Containbox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.greenAccent,
      child: Column(
        children: <Widget>[
          Text('Hello Flutter 1'),
          Text('Hello Flutter 2'),
          Text('Hello Flutter 3'),
          Text('Hello Flutter 4'),
          Text('Hello Flutter 5'),
        ],
      ),
    );
  }
}
