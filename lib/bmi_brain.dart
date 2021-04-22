import 'dart:math';

import 'package:flutter/cupertino.dart';

class bmi_brain{
  bmi_brain({this.hieght,this.weight});

  final int hieght;
  final int weight;
  double _bmi;

  String bmi_value(){
    _bmi = ((weight*10000)/pow(hieght,2));
    return _bmi.toStringAsFixed(1);
  }
  String bmi_short_result(){
    if(_bmi < 18.5)
      {
        return "UNDER-WEIGHT";
      }
    else if(_bmi >= 18.5 && _bmi <25.0)
      {
        return "NORMAL";
      }
    else if(_bmi >= 25.0 && _bmi<30.0)
      {
        return "OVER-WEIGHT";
      }
    else if(_bmi >=30.0)
      {
        return "OBESE";
      }
  }
  String bmi_long_firstline_result(){
    if(_bmi < 18.5)
    {
      return "Your BMI Doesn't Look Good";
    }
    else if(_bmi >= 18.5 && _bmi <25.0)
    {
      return "Your BMI Is Normal";
    }
    else if(_bmi >= 25.0 && _bmi<30.0)
    {
      return "Your BMI Doesn't Look Good";
    }
    else if(_bmi >=30.0)
    {
      return "Your BMI Doesn't Look Good";
    }
  }
  String bmi_long_secondline_result(){
    if(_bmi < 18.5)
    {
      return "Your Weight May Be Too Low";
    }
    else if(_bmi >= 18.5 && _bmi <25.0)
    {
      return "Great Job!!";
    }
    else if(_bmi >= 25.0 && _bmi<30.0)
    {
      return "Your Weight Is  More Than Normal";
    }
    else if(_bmi >=30.0)
    {
      return "Your Weight Is More Than Normal";
    }
  }
  Color short_result_color(){
    if(_bmi < 18.5)
    {
      return Color(0xffc9e000);
    }
    else if(_bmi >= 18.5 && _bmi <25.0)
    {
      return Color(0xff00aa00);
    }
    else if(_bmi >= 25.0 && _bmi<30.0)
    {
      return Color(0xffc9e000);
    }
    else if(_bmi >=30.0)
    {
      return Color(0xffaa0004);
    }
  }

}