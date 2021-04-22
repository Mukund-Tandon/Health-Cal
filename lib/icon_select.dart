import 'package:health_cal/contants.dart';
import 'package:flutter/material.dart';
class Icon_select extends StatelessWidget {
  Icon_select({this.icon,this.text,this.distace_between_icon_and_text,this.icon_size});
  final IconData icon;
  final String text;
  final double distace_between_icon_and_text;
  final double icon_size;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: Colors.grey[100],
          size: icon_size,
        ),
        SizedBox(height: distace_between_icon_and_text),
        Text( text,
          style: xcontainer_text_style,
          ),
      ],
    );
  }
}