import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Constants {
  static const mainColor= Colors.deepPurple;
  static const String title='Calculate Average';
  static BorderRadius radius=BorderRadius.circular(20);
  static final TextStyle textStyle=
      GoogleFonts.lato(
           fontSize: 28,fontWeight: FontWeight.w800, color: Colors.deepPurple);
  static final TextStyle lessonStyle=
      GoogleFonts.lato(
           fontSize: 24,fontWeight: FontWeight.w500, color: Colors.deepPurple);
  static final TextStyle averageStyle=
      GoogleFonts.lato(
           fontSize: 50,fontWeight: FontWeight.w700, color: Colors.deepPurple);
  

 /*  static final TextTheme textStyle=GoogleFonts.actor(
    fontSize: 20, color:mainColor);  */
}
   