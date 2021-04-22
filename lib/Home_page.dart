import 'package:health_cal/contants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
class home_page extends StatefulWidget {
  @override
  _home_pageState createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'HEALTH CAL',
          style: xappbar_text_style,
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, '/bmi_page');
            },
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('BMI',
                      style: TextStyle(
                        fontSize: 70.0,
                        fontWeight: FontWeight.w900,
                        fontFamily: 'App_Bar_Title',
                      ),),
                    ],
                  ),
                  SizedBox(height: 10.0,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('(Body Mass Index)',
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w100,
                      ),)
                    ],
                  ),
                  SizedBox(height: 30.0,)
                ],
              ),
              margin: EdgeInsets.all(20.0),
              height: 60.0,
              width: 30.0,
              decoration: BoxDecoration(
                color: xselected_container_color,
                shape: BoxShape.circle,



              ),
            ),
          ),),
          Expanded(child: GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, '/whr_input_page');
            },
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('WHR',
                        style: TextStyle(
                          fontSize: 67.0,
                          fontWeight: FontWeight.w900,
                          fontFamily: 'App_Bar_Title',
                        ),),
                    ],
                  ),
                  SizedBox(height: 10.0,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('(Waist Hip Ratio)',
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w100,
                        ),)
                    ],
                  ),
                  SizedBox(height: 30.0,)
                ],
              ),
              margin: EdgeInsets.all(20.0),
              height: 60.0,
              width: 30.0,
              decoration: BoxDecoration(
                color: xselected_container_color,
                shape: BoxShape.circle,


              ),
            ),
          ),),
          Expanded(child: GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, '/bai_input_page');
            },
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('BAI',
                        style: TextStyle(
                          fontSize: 70.0,
                          fontWeight: FontWeight.w900,
                          fontFamily: 'App_Bar_Title',
                        ),),
                    ],
                  ),
                  SizedBox(height: 10.0,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('(Body Adiposity Index)',
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w100,
                        ),)
                    ],
                  ),
                  SizedBox(height: 30.0,)
                ],
              ),
              margin: EdgeInsets.all(20.0),
              height: 60.0,
              width: 30.0,
              decoration: BoxDecoration(
                color: xselected_container_color,
                shape: BoxShape.circle,


              ),
            ),
          ),),
        ],
      ),


    );
  }
}
