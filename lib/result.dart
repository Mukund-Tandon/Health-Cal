import 'package:flutter/material.dart';
import 'contants.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class result_all extends StatefulWidget {
  String resullt;
  String short_resullt0;
  String long_resullt_first_line;
  String long_resullt_socond_line;
  Color collor;
  result_all({this.resullt,this.short_resullt0,this.long_resullt_first_line,this.long_resullt_socond_line,this.collor});
  @override
  _result_allState createState() => _result_allState(resullt,short_resullt0,long_resullt_first_line,long_resullt_socond_line,collor);
}

class _result_allState extends State<result_all> {
  _result_allState(this.resullt,this.short_resullt0,this.long_resullt_first_line,this.long_resullt_socond_line,this.collor);
  String resullt;
  String short_resullt0;
  String long_resullt_first_line;
  String long_resullt_socond_line;
  Color collor;
  String short_resullt1 ='BMI INFO';
  String second_card_bmi_about ='BMI can be used to screen weight categories ,but is not a diagnostic of the body fatness or health of an individual.';
  String second_card_bmi_range = '-Normal = 18.5 to 25.0           -Underweight = less than 18.5          -OverWeight = 25.0 to 30.0          -Obese = more than 30.0';

String short_result_check(int n)
{
  if(n==0)
    return short_resullt0;
  else
    return short_resullt1;
}
Color short_result_color_check(int n)
{
  if(n==0)
    return collor;
  else
    return Colors.white;
}
String result_check(int n)
{
  if(n==0)
    return resullt;
  else
    return second_card_bmi_about;
}
double size_box_below_short_result(int n)
{
  if(n==0)
    return 50.0;
  else
    return 10.0;
}
double result_size_check(int n)
{
  if(n==0)
    return 105.0;
  else
    return 20.0;
}
FontWeight result_font_weight(int n)
{
  if(n==0)
    return FontWeight.w900;
  else
    return FontWeight.w300;
}
String long_result_check(int n)
{
  if(n==0)
    return long_resullt_first_line;
  else
    return 'BMI Ranges';
}
String long_result_second_line_check(int n)
{
  if(n==0)
    return long_resullt_socond_line;
  else
    return second_card_bmi_range;
}
Color long_result_first_line_color_check(int n)
{
  if(n==0)
  return Colors.grey[400];
  else
  return Colors.grey[200];
}



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          ' YOUR RESULT',
          style: xappbar_text_style,
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 150.0),

          child: Swiper(
            loop: false,
            itemCount: 2,
            itemWidth: 300.0,
            itemHeight: 300.0,
            viewportFraction: 0.8,
            scale: 0.9,
            pagination: new SwiperPagination(
              builder: DotSwiperPaginationBuilder(
                color: Colors.grey,
                activeColor: Colors.white,
                size: 10.0,
                activeSize: 12.0,
              ),
            ),
            itemBuilder: (context,index){
              return Stack(

                children: [
                  Container(
                    height: 420.0,
                        width: 350.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: Color(0xa93f4659),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text( short_result_check(index),
                              style: TextStyle(
                                  color: short_result_color_check(index),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 22.0
                              ),),
                            SizedBox(height: size_box_below_short_result(index),),
                            Text( result_check(index),
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: result_size_check(index),
                                fontWeight: result_font_weight(index),
                              ),),
                            Text(long_result_check(index),
                              style: TextStyle(
                                fontSize: 18.0,
                                color: long_result_first_line_color_check(index),
                              ),),
                            Text(long_result_second_line_check(index),
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.grey[400],
                              ),)
                          ],
                        ),
                  )
                ],
              );
          },
          )

       ),
          ),

        ],
      ),
    );
  }
}
