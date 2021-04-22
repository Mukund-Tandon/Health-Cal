
import 'package:health_cal/result.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'container_style.dart';
import 'icon_select.dart';
import 'contants.dart';
import 'bmi_brain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

//Enums
enum Gender {male,female}
class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}
//Gender selectgender;
class _InputPageState extends State<InputPage> {

  void Update_color_gender_card(Gender selected_gender)
  {
    if(selected_gender == Gender.male)
      {
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('BMI CALCULATOR',
        style: xappbar_text_style,),),


      body:Column(
        children: [
          Expanded(child: Row(
            children: [
              Expanded(

                child: Container_style(
                  onPress: () {
                    setState(() {
                      Update_color_gender_card(Gender.male);
                    });
                  },
                  colour: male_color,
                  childcard: Icon_select(icon: FontAwesomeIcons.mars,text: 'MALE',distace_between_icon_and_text: 20.0,icon_size: 110.0,),),),
              Expanded(
                child: Container_style(colour: female_color,
                onPress: (){
                  setState(() {
                    Update_color_gender_card(Gender.female);
                  });
                },
                childcard: Icon_select(icon: FontAwesomeIcons.venus,text: 'FEMALE',distace_between_icon_and_text: 20.0,icon_size: 110.0,),),),
            ],
          ),),
          Expanded(
            child: Container_style(colour: xselected_container_color,
              childcard:  Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('HIEGHT',
                  style: xcontainer_text_style,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment:  CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(hieght.toString(),style: xhieght_container_text_style ),
                      Text('cm', style: xhieght_container_unit_text_style,)
                    ],
                  ),
                  SliderTheme(
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
                      value: hieght.toDouble(),
                      min: 1.0,
                      max: 250.0,
                      onChanged: (double newValue){
                        setState(() {
                          hieght = newValue.round();
                        });
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(child: Row(
            children: [
              Expanded(
                child: Container_style(colour: xselected_container_color,
                  childcard: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'WEIGHT',
                        style: xcontainer_text_style,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            weight_value.toString(),
                            style: xhieght_container_text_style,
                          ),
                          Text(
                            'kg',
                            style: xhieght_container_unit_text_style,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Roundbutton(icon: FontAwesomeIcons.minus,
                            onpressed: (){
                            setState(() {
                              weight_value--;
                              if(weight_value <1)
                                {
                                  weight_value = 1;
                                }

                            });
                            },
                          ),

                           SizedBox(width: 30.0,),
                          Roundbutton(icon: FontAwesomeIcons.plus,
                          onpressed: (){
                            setState(() {
                              weight_value++;

                            });
                          },),
                        ],
                      )
                    ],
                  ),
                ),),
              Expanded(
                child: Container_style(colour: xselected_container_color,
                childcard: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'AGE',
                      style: xcontainer_text_style,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          age.toString(),
                          style: xhieght_container_text_style,
                        ),
                        Text(
                          '',
                          style: xhieght_container_unit_text_style,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Roundbutton(icon: FontAwesomeIcons.minus,
                          onpressed: (){
                          setState(() {

                            age--;
                            if(age < 1){
                              age = 1;
                            }
                          });
                          },
                        ),

                         SizedBox(width: 30.0,),
                        Roundbutton(icon: FontAwesomeIcons.plus,
                        onpressed: (){
                          setState(() {
                            age++;
                          });
                        },),
                      ],
                    )
                  ],
                ),
                ),),
            ],
          ),),
          GestureDetector(
            onTap: (){
              if(male_color == xnot_selected_container_color && female_color == xnot_selected_container_color)
                {
                  Alert(
                    context: context,
                    title: 'Error!',
                    desc: 'You Might Have Missed Something',
                  ).show();
                }
              else{
                  bmi_brain res = bmi_brain(hieght: hieght,weight: weight_value);

                  Navigator.push(context, MaterialPageRoute(builder: (context)=> result_all(
                  resullt: res.bmi_value(),
                  short_resullt0: res.bmi_short_result(),
                  long_resullt_first_line: res.bmi_long_firstline_result(),
                  long_resullt_socond_line: res.bmi_long_secondline_result(),
                  collor: res.short_result_color(),


                  )));
                }
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


class Roundbutton extends StatelessWidget {
  Roundbutton({this.icon,this.onpressed});
  final IconData icon;
  final Function onpressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 50.0,
      disabledElevation: 100.0,
      shape: CircleBorder(),
      constraints: BoxConstraints.tightFor(
          width: 56.0,
          height: 56.0,),
      child: Icon(icon,
      size: 30.0,
      color: Colors.grey[200],),
      onPressed: onpressed,
      fillColor: Color(0x30ffffff),
      enableFeedback: true,
    );
  }
}





