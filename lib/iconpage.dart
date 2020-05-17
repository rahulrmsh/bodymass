import 'package:bodymass/constans.dart';
import 'package:flutter/material.dart';

class IconCard extends StatelessWidget {
  IconCard({ @required this.iconkey, @required this.textKey, @required this.colorKey});
  final String textKey;
  final IconData iconkey;
  final Color colorKey;
  
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          iconkey,
          color: colorKey,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          textKey,
          style: TextStyle(
            fontSize: fontSize,
            color: colorKey
            ),
          ),
      ],
    );
  }
}

//0xFF8D8EB4