import 'package:bodymass/constans.dart';
import 'package:flutter/material.dart';
import 'input_page.dart';
import 'constans.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override  
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: primaryColor,
        scaffoldBackgroundColor: Color(0xFF010725),
        textTheme: TextTheme(
          body1: textStyles,
        ),
      ),
      home: InputPage(),
    );
  }
}
