import 'package:finance_app_ui/core/styling/app_color.dart';
import 'package:finance_app_ui/core/styling/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppStyle {
  static TextStyle headlines = TextStyle(
    fontWeight: AppFonts.w700,
    fontSize: AppFonts.s30.sp,
    color: AppColor.primaryColor,
  );

  static TextStyle subtitles = TextStyle(
    fontWeight: AppFonts.w500,
    fontSize: AppFonts.s16.sp,
    color: AppColor.secondaryColor,
  );
  static TextStyle black16w600style = TextStyle(
    fontWeight: AppFonts.w600,
    fontSize: AppFonts.s16.sp,
    color: AppColor.black16w600style,
  );
  static TextStyle grey12w500style = TextStyle(
    fontWeight: AppFonts.w500,
    fontSize: AppFonts.s12.sp,
    color: AppColor.grey,
  );
  static TextStyle grey14w600style=TextStyle(
                      color: AppColor.grey14w600style,
                      fontSize: AppFonts.s14.sp,
                      fontWeight:  AppFonts.w600,
                    );
}
