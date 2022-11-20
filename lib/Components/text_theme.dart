import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:muhasebe_app/Components/ConstColors.dart';


class AppTextTheme{
  static TextStyle labels=
    TextStyle(
      color: ConstColors.labeltext,
      fontSize: 13,
      fontWeight: FontWeight.w700,
      fontFamily: 'CodeNext-Trial'
  );
  static TextStyle titles =
       TextStyle(
        color: ConstColors.primaryColor,
        fontSize: 28,
        fontWeight: FontWeight.w600,
         fontFamily: 'CodeNext-Trial'
  );
  static TextStyle titles2=
       TextStyle(
          color: ConstColors.secondary,
          fontSize: 28,
          fontWeight: FontWeight.w600,
         fontFamily: 'Trial'
  );
  static TextStyle hintTxt=
       TextStyle(
        color: Color(0xff8B9EB0),
        fontSize: 13,
        fontFamily: 'Trial'
  );
}