import 'package:finance_app_ui/core/styling/app_color.dart';
import 'package:finance_app_ui/core/styling/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget getLastWidget({
  Function()? ontap,
  String? textAcount,
  String? clickable,
}) {
  return Container(
    margin: EdgeInsets.only(left: 60.w),
    child: Row(
      children: [
        Text(
          textAcount ?? "Don\’t have an account?",
          style: TextStyle(color: AppColor.primaryColor),
        ),
        InkWell(
          onTap: ontap,
          child: Text(
            clickable ?? "Login Now",
            style: AppStyle.black16w600style,
          ),
        ),
      ],
    ),
  );
}
