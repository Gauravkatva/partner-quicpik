import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        primaryColor: Color(0xff5686EE),
        textTheme: appTextTheme(),
      );

  static TextTheme appTextTheme() => TextTheme(
        bodyText1: style(
          fontSize: 16,
          fontWeight: FontWeight.normal,
        ),
        bodyText2: style(
          fontSize: 14,
          fontWeight: FontWeight.normal,
        ),
        headline3: style(
          fontSize: 48,
          fontWeight: FontWeight.normal,
        ),
        headline4: style(
          fontSize: 34,
          fontWeight: FontWeight.normal,
        ),
        headline5: style(
          fontSize: 24,
          fontWeight: FontWeight.normal,
        ),
        headline6: style(
          fontSize: 20,
          fontWeight: FontWeight.w400,
        ),
        subtitle1: style(
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
        subtitle2: style(
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
        caption: style(
          fontSize: 12,
        ),
      );

  static TextStyle style({
    required double fontSize,
    Color? color,
    FontWeight? fontWeight,
    double? letterSpacing,
    double? wordSpacing,
  }) =>
      GoogleFonts.poppins(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
        letterSpacing: letterSpacing,
        wordSpacing: wordSpacing,
      );
}
