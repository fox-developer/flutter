import 'package:flutter/material.dart';

var _CategoryName;
var _CategoryIcon;
var _CategoryColor;

class Category extends StatelessWidget {
  Category(_CategoryName1, _CategoryIcon2, _CategoryColor3) {
    _CategoryName = _CategoryName1;
    _CategoryIcon = _CategoryIcon2;
    _CategoryColor = _CategoryColor3;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400.0,
      child: InkWell(
        borderRadius: BorderRadius.circular(30.0),
        highlightColor: _CategoryColor,
        splashColor: Colors.redAccent,
        onTap: () {
          print('I was tapped');
        },
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(right: 16.0),
                child: Icon(_CategoryIcon),
              ),
              Center(
                child: Text(_CategoryName,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.grey[100],
                        fontSize: 25.0,
                        fontWeight: FontWeight.w700)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
