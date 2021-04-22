import 'package:health_cal/container_style.dart';
import 'package:health_cal/contants.dart';
import 'package:health_cal/icon_select.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Gender {male,female}
Gender x;
void Update_color_gender_card(Gender selected_gender)
{
  if(selected_gender == Gender.male)
  {
    x = Gender.male;
    if(male_color == xnot_selected_container_color)
    {
      male_color = xselected_container_color;
      female_color = xnot_selected_container_color;
    }
    else{
      male_color = xnot_selected_container_color;
    }

  }
  if(selected_gender == Gender.female)
  {
    x = Gender.female;
    if(female_color == xnot_selected_container_color)
    {
      male_color = xnot_selected_container_color;
      female_color = xselected_container_color;
    }
    else{
      female_color = xnot_selected_container_color;
    }
  }
}
class bai_input extends StatefulWidget {
  @override
  _bai_inputState createState() => _bai_inputState();
}

class _bai_inputState extends State<bai_input> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BAI CALCULATOR',
          style: xappbar_text_style,
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(child: Row(
            children: [
              Expanded(
                child: Container_style(
                  colour: male_color,
                  onPress: (){
                    setState(() {
                      Update_color_gender_card(Gender.male);
                    });
                  },
                  childcard: Icon_select(icon: FontAwesomeIcons.mars,text: 'MALE',distace_between_icon_and_text: 12.0,icon_size: 100.0,),
                ),
              ),
              Expanded(child: Container_style(
                colour: female_color,
                onPress: (){
                  setState(() {
                    Update_color_gender_card(Gender.female);                  });
                },
                childcard: Icon_select(icon: FontAwesomeIcons.venus,text: 'FEMALE',distace_between_icon_and_text: 12.0,icon_size: 100.0,),
              )),
            ],
          )),
          Expanded(child:Container_style(
            colour: xselected_container_color,
            childcard: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('HIEGHT',style: xcontainer_text_style,),
                Row(
                  children: [
                    Container(
                      width: 210.0,
                      child: SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                            thumbShape: RoundSliderThumbShape(enabledThumbRadius: 10.0),
                            thumbColor: Colors.redAccent[400],
                            overlayColor: Color(0x29ff0116),
                            overlayShape: RoundSliderOverlayShape(overlayRadius: 20.0),
                            activeTrackColor: Colors.white,
                            inactiveTrackColor: Colors.grey[500],
                            trackHeight: 3.0
                        ),
                        child: Slider(
                          value: bai_hieght.toDouble(),
                          min: 0.0,
                          max: 250.0,
                          onChanged: (double newValue){
                            setState(() {
                              bai_hieght = newValue.round();
                            });
                          },
                        ),
                      ),
                    ),
                    SizedBox(width: 10.0,),
                    
                    Container(
                      width: 150.0 ,
                      height: 90.0,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.baseline ,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(bai_hieght.toString(),style: xhieght_container_text_style ),
                          Text('cm', style: xhieght_container_unit_text_style,)
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          )),
          Expanded(child:Container_style(
            colour: xselected_container_color,
            childcard: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('HIP CIRCUMFERENCE',style: xcontainer_text_style,),
                Row(
                  children: [
                    Container(
                      width: 210.0,
                      child: SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                            thumbShape: RoundSliderThumbShape(enabledThumbRadius: 10.0),
                            thumbColor: Colors.redAccent[400],
                            overlayColor: Color(0x29ff0116),
                            overlayShape: RoundSliderOverlayShape(overlayRadius: 20.0),
                            activeTrackColor: Colors.white,
                            inactiveTrackColor: Colors.grey[500],
                            trackHeight: 3.0
                        ),
                        child: Slider(
                          value: bai_hip_circumference.toDouble(),
                          min: 1.0,
                          max: 200.0,
                          onChanged: (double newValue){
                            setState(() {
                              bai_hip_circumference = newValue.round();
                            });
                          },
                        ),
                      ),
                    ),
                    SizedBox(width: 10.0,),

                    Container(
                      width: 150.0 ,
                      height: 90.0,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.baseline ,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(bai_hip_circumference.toString(),style: xhieght_container_text_style ),
                          Text('cm', style: xhieght_container_unit_text_style,)
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          )),
          Expanded(child:Container_style(
            colour: xselected_container_color,
            childcard: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('AGE',style: xcontainer_text_style,),
                Row(
                  children: [

                    Container(
                      width: 210.0,
                      child: SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                            thumbShape: RoundSliderThumbShape(enabledThumbRadius: 10.0),
                            thumbColor: Colors.redAccent[400],
                            overlayColor: Color(0x29ff0116),
                            overlayShape: RoundSliderOverlayShape(overlayRadius: 20.0),
                            activeTrackColor: Colors.white,
                            inactiveTrackColor: Colors.grey[500],
                            trackHeight: 3.0,
                        ),
                        child: Slider(
                          value: bai_age.toDouble(),
                          min: 20.0,
                          max: 100.0,
                          onChanged: (double newValue){
                            setState(() {
                              bai_age = newValue.round();
                            });
                          },
                        ),
                      ),
                    ),
                    SizedBox(width: 10.0,),

                    Container(

                      width: 150.0 ,
                      height: 90.0,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.baseline ,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(bai_age.toString(),style: xhieght_container_text_style ),
                          Text('', style: xhieght_container_unit_text_style,)
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          )),
          GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, '/bmi_result');
            },
            child: Container(
              alignment: Alignment.center,
              child: Text(
                'CALCULATE',
                style: TextStyle(
                  fontFamily: 'Calculate',
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                  fontSize: 30.0,
                ),
              ),
              width: 270.0,
              height: xcalculate_container_hieght,
              margin: EdgeInsets.only(bottom: 10.0),
              decoration: BoxDecoration(
                color: xselected_container_color,
                borderRadius: BorderRadius.circular(50.0),
              ),
            ),
          )
        ],
      ),
    );
  }
}
