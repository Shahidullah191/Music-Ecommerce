import 'package:flutter/material.dart';

Color kBlue =  Color(0xFFF1D1CE5);
Color kBlack =  Colors.black54;
Color kNevy =  Color(0xFFF182747);
Color kGrey =  Colors.grey.withOpacity(0.2);


myStyle(double fs, Color clr, [FontWeight? fw]){
  return TextStyle(fontSize: fs, color: clr, fontWeight: fw);
}