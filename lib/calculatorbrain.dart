import 'dart:math';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
class Brain {
  Brain({this.height, this.weight, this.age, this.gender});
  final int height;
  final int weight;
  final int age;
  final int gender;
  double _bmi = -1;
  double _resultinterpret;

  IconData iconChanger(){
    if (_resultinterpret == 0)
      return (LineIcons.arrow_circle_o_up);
    else if(_resultinterpret == 1)
      return (LineIcons.check_circle_o);
    else if(_resultinterpret == 2)
      return (LineIcons.level_down);
    else if(_resultinterpret == -1)
      return (LineIcons.meh_o); 
  }

  Color colorChanger(){
    if (_resultinterpret == 0)
      return (Colors.red);
    else if(_resultinterpret == 1)
      return (Colors.green[400]);
    else if(_resultinterpret == 2)
      return (Colors.red);
    else if(_resultinterpret == -1)
      return (Colors.white); 
  }

  String calculatorBMI(){
    if(gender >= 0){
      _bmi = weight/pow(height/100, 2);
      return (_bmi.toStringAsFixed(2));
    }
    else
      return 'Fill in all the required information';
  }

  String getResult(){
    if(gender >= 0){
      if (_bmi >= 25){
        _resultinterpret = 0;
        return "OverWeight";
      } 
      else if (_bmi >= 18.5){
        _resultinterpret = 1;
        return "Normal";
      }
      else{
        _resultinterpret = 2;
        return 'UnderWeight';
      }
    }
    else{
      _resultinterpret = -1;
      return 'ERROR';
    }
  }

  IconData fGender(){
    if (gender == 0)
      return LineIcons.male;
    else if (gender == 1)
      return LineIcons.female;
    else
      return LineIcons.stop;
  }


  String fHeight(){
    return height.toString();
  }

  String fAge(){
    return age.toString();
  }

  String fWeight(){
    return weight.toString();
  }
}