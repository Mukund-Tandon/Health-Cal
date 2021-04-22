import 'dart:math';
import 'bai_input_page.dart';

class bai_brain{
final int bai_hieght;
final int bai_hip_circumference;
final int bai_age;
bai_brain({this.bai_hip_circumference,this.bai_hieght,this.bai_age});
double _bai;

String bai_value(){
  _bai = ((bai_hip_circumference)/pow((bai_hieght/100), 1.5))-18;
  return _bai.toStringAsFixed(1);
}
String bai_short_result(){
  if(x == Gender.male)
    {
      if(bai_age >=20 && bai_age<=39)
        {
          if(_bai <= 8)
            {
              return "UNDERWEIGHT";
            }
          else if(_bai >8 && _bai<= 21)
            {
              return "NORMAL";
            }
          else if(_bai >21 && _bai<=26)
            {
              return "OVER-WEIGHT";
            }
          else if(_bai >26)
            {
              return "OBESE";
            }
        }
      else if(bai_age >=40 && bai_age <=59)
        {
          if(_bai <= 11)
           {
             return "UNDERWEIGHT";
           }
          else if(_bai >11 && _bai<= 23)
           {
             return "NORMAL";
           }
          else if(_bai >23 && _bai<=29)
           {
             return "OVER-WEIGHT";
           }
          else if(_bai >29)
           {
             return "OBESE";
           }
        }
      else
        {
          if(_bai <= 13)
           {
             return "UNDERWEIGHT";
           }
          else if(_bai >13 && _bai<= 25)
           {
             return "NORMAL";
           }
          else if(_bai >25 && _bai<=31)
           {
             return "OVER-WEIGHT";
           }
          else if(_bai >31)
           {
             return "OBESE";
           }
        }
    }
  if(x == Gender.female)
  {
    if(bai_age >=20 && bai_age<=39)
    {
      if(_bai <= 21)
      {
        return "UNDERWEIGHT";
      }
      else if(_bai >21 && _bai<= 33)
      {
        return "NORMAL";
      }
      else if(_bai >33 && _bai<=39)
      {
        return "OVER-WEIGHT";
      }
      else if(_bai >39)
      {
        return "OBESE";
      }
    }
    else if(bai_age >=40 && bai_age <=59)
    {
      if(_bai <= 23)
      {
        return "UNDERWEIGHT";
      }
      else if(_bai >23 && _bai<= 35)
      {
        return "NORMAL";
      }
      else if(_bai >35 && _bai<=41)
      {
        return "OVER-WEIGHT";
      }
      else if(_bai >41)
      {
        return "OBESE";
      }
    }
    else
    {
      if(_bai <= 25)
      {
        return "UNDERWEIGHT";
      }
      else if(_bai >25 && _bai<= 38)
      {
        return "NORMAL";
      }
      else if(_bai >38 && _bai<=41)
      {
        return "OVER-WEIGHT";
      }
      else if(_bai >41)
      {
        return "OBESE";
      }
    }
  }
}
String bai_long_result_first_lined()
{
  if(x == Gender.male)
  {
    if(bai_age >=20 && bai_age<=39)
    {
      if(_bai <= 8)
      {
        return "Your BAI Doesn't Look Good";
      }
      else if(_bai >8 && _bai<= 21)
      {
        return "Your BAI Is Normal";
      }
      else if(_bai >21 && _bai<=26)
      {
        return "Your BAI Doesn't Look Good";
      }
      else if(_bai >26)
      {
        return "Your BAI Doesn't Look Good";
      }
    }
    else if(bai_age >=40 && bai_age <=59)
    {
      if(_bai <= 11)
      {
        return "Your BAI Doesn't Look Good";
      }
      else if(_bai >11 && _bai<= 23)
      {
        return "Your BAI Is Normal";
      }
      else if(_bai >23 && _bai<=29)
      {
        return "Your BAI Doesn't Look Good";
      }
      else if(_bai >29)
      {
        return "Your BAI Doesn't Look Good";
      }
    }
    else
    {
      if(_bai <= 13)
      {
        return "Your BAI Doesn't Look Good";
      }
      else if(_bai >13 && _bai<= 25)
      {
        return "Your BAI Is Normal";
      }
      else if(_bai >25 && _bai<=31)
      {
        return "Your BAI Doesn't Look Good";
      }
      else if(_bai >31)
      {
        return "Your BAI Doesn't Look Good";
      }
    }
  }
  if(x == Gender.female)
  {
    if(bai_age >=20 && bai_age<=39)
    {
      if(_bai <= 21)
      {
        return "Your BAI Doesn't Look Good";
      }
      else if(_bai >21 && _bai<= 33)
      {
        return "Your BAI Is Normal";
      }
      else if(_bai >33 && _bai<=39)
      {
        return "Your BAI Doesn't Look Good";
      }
      else if(_bai >39)
      {
        return "Your BAI Doesn't Look Good";
      }
    }
    else if(bai_age >=40 && bai_age <=59)
    {
      if(_bai <= 23)
      {
        return "Your BAI Doesn't Look Good";
      }
      else if(_bai >23 && _bai<= 35)
      {
        return "Your BAI Is Normal";
      }
      else if(_bai >35 && _bai<=41)
      {
        return "Your BAI Doesn't Look Good";
      }
      else if(_bai >41)
      {
        return "Your BAI Doesn't Look Good";
      }
    }
    else
    {
      if(_bai <= 25)
      {
        return "Your BAI Doesn't Look Good";
      }
      else if(_bai >25 && _bai<= 38)
      {
        return "Your BAI Is Normal";
      }
      else if(_bai >38 && _bai<=41)
      {
        return "Your BAI Doesn't Look Good";
      }
      else if(_bai >41)
      {
        return "Your BAI Doesn't Look Good";
      }
    }
  }
}
String bai_long_result_second_line()
{
  if(x == Gender.male)
  {
    if(bai_age >=20 && bai_age<=39)
    {
      if(_bai <= 8)
      {
        return "Your Weight May Be Too Low";
      }
      else if(_bai >8 && _bai<= 21)
      {
        return "Great Job!!";
      }
      else if(_bai >21 && _bai<=26)
      {
        return "Your Weight Is Little More Than Normal";
      }
      else if(_bai >26)
      {
        return "Your Weight Is More Than Normal";
      }
    }
    else if(bai_age >=40 && bai_age <=59)
    {
      if(_bai <= 11)
      {
        return "Your Weight May Be Too Low";
      }
      else if(_bai >11 && _bai<= 23)
      {
        return "Great Job!!";
      }
      else if(_bai >23 && _bai<=29)
      {
        return "Your Weight Is Little More Than Normal";
      }
      else if(_bai >29)
      {
        return "Your Weight Is More Than Normal";
      }
    }
    else
    {
      if(_bai <= 13)
      {
        return "Your Weight May Be Too Low";
      }
      else if(_bai >13 && _bai<= 25)
      {
        return "Great Job!!";
      }
      else if(_bai >25 && _bai<=31)
      {
        return "Your Weight Is Little More Than Normal";
      }
      else if(_bai >31)
      {
        return "Your Weight Is More Than Normal";
      }
    }
  }
  if(x == Gender.female)
  {
    if(bai_age >=20 && bai_age<=39)
    {
      if(_bai <= 21)
      {
        return "Your Weight May Be Too Low";
      }
      else if(_bai >21 && _bai<= 33)
      {
        return "Great Job!!";
      }
      else if(_bai >33 && _bai<=39)
      {
        return "Your Weight Is Little More Than Normal";
      }
      else if(_bai >39)
      {
        return "Your Weight Is More Than Normal";
      }
    }
    else if(bai_age >=40 && bai_age <=59)
    {
      if(_bai <= 23)
      {
        return "Your Weight May Be Too Low";
      }
      else if(_bai >23 && _bai<= 35)
      {
        return "Great Job!!";
      }
      else if(_bai >35 && _bai<=41)
      {
        return "Your Weight Is Little More Than Normal";
      }
      else if(_bai >41)
      {
        return "Your Weight Is More Than Normal";
      }
    }
    else
    {
      if(_bai <= 25)
      {
        return "Your Weight May Be Too Low";
      }
      else if(_bai >25 && _bai<= 38)
      {
        return "Great Job!!";
      }
      else if(_bai >38 && _bai<=41)
      {
        return "Your Weight Is Little More Than Normal";
      }
      else if(_bai >41)
      {
        return "Your Weight Is More Than Normal";
      }
    }
  }
}

}
