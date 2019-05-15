import 'package:flutter/material.dart';
import 'category.dart';

const _CategoryName = 'Cake';
const _CategoryIcon = Icons.cake;
const _CategoryColor = Colors.green;

void main() {
  runApp(UnitConverterApp());
}

class UnitConverterApp extends StatelessWidget {
  @override
  Widget build(BuildContext build) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Unit Converter App',
      home: Scaffold(
        backgroundColor: Colors.green[100],
        body: Center(
          child: Category(_CategoryName,_CategoryIcon,_CategoryColor),
        ),
      ),
    );
  }
}
