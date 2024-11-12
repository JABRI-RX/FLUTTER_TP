
import 'package:flutter/material.dart';
import 'package:tp/components/UIColors.dart';

class Mytextfield extends StatelessWidget {
  TextEditingController txtbox = new TextEditingController();
  final String hintText ;
  final bool obsecureText;
  final Color color;
  final double? padding;
   Mytextfield({
    super.key,
    required this.txtbox,
    required this.hintText,
    required this.obsecureText, required this.color,
    this.padding,
  });
  Widget build(BuildContext context) {
    return Padding(
      padding:   EdgeInsets.symmetric(horizontal: padding ?? 25.0),
      child: TextField(

        controller: txtbox,
        obscureText: obsecureText,
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide:  BorderSide(color:color),
            ),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: color)
            ),
            hintText:hintText,
            hintStyle: TextStyle(color:color)
        ),
        style: TextStyle(color: UIColors.black),
      ),
    );
  }
}
