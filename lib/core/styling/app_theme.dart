import 'package:finance_app_ui/core/styling/app_color.dart';
import 'package:finance_app_ui/core/styling/app_fonts.dart';
import 'package:finance_app_ui/core/styling/app_style.dart';
import 'package:flutter/material.dart';

class AppTheme {

// light theme
 
static ThemeData lightTheme=ThemeData(
  brightness: .light,
  primaryColor: AppColor.primaryColor,
  scaffoldBackgroundColor:AppColor.scaffoldColor,
  fontFamily: AppFonts.mainFont,
   textTheme: TextTheme(
    titleLarge: AppStyle.headlines,
    titleMedium: AppStyle.subtitles,
    bodySmall: AppStyle.black16w600style,
    titleSmall: AppStyle.grey12w500style,
   ),
   buttonTheme: ButtonThemeData(
    buttonColor: AppColor.primaryColor,
   )
);
}