import 'package:health_cal/Home_page.dart';
import 'package:health_cal/bai_input_page.dart';
import 'package:health_cal/whr_input_page.dart';
import 'package:flutter/material.dart';
import 'package:health_cal/Input_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: '/home_page',
        theme: ThemeData.dark().copyWith(

          primaryColor: Color(0xff070b1f),

          scaffoldBackgroundColor: Color(0xff070b1f),




        ),
        routes: {
          '/bmi_page': (context) => InputPage(),
          '/home_page': (context) => home_page(),
          '/bai_input_page': (context) => bai_input(),
          '/whr_input_page':(context) => whr_input()
        }
    );


  }
}