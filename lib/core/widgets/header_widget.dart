import 'package:finance_app_ui/core/styling/app_color.dart';
import 'package:finance_app_ui/core/styling/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key, this.title, this.icon});
 final String? title;
 final IconData? icon;
  @override
  Widget build(BuildContext context) {
    return    Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 50.w,
                      height: 50.h,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: AppColor.secondaryColor),
                      ),
                      child: Icon(Icons.arrow_back, color: Colors.black),
                    ),
                    Text(title ??"All Cards", style: AppStyle.black16w600style),
                    Container(
                      width: 50.w,
                      height: 50.h,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: AppColor.secondaryColor),
                      ),
                      child: Icon( icon??Icons.more_horiz, color: Colors.black),
                    ),
                  ],
                );
  }
}