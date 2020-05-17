import 'package:flutter/material.dart';
import 'constans.dart';

class BottomButton extends StatelessWidget {

  BottomButton({@required this.onTap, @required this.buttonTitle });

  final Function onTap;
  final String buttonTitle;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.only(bottom: 5.0),
        color: bottomColorCode,
        child: Center(
          child: Text(
            buttonTitle,
            style: TextStyle(
              color: Colors.white,
              fontSize: 23.0,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
        width: double.infinity,
        height: 65.0,
        margin: EdgeInsets.only(top: 10.0),
      ),
    );
  }
}
