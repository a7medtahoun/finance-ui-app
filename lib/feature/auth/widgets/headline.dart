import 'package:finance_app_ui/core/styling/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Headline extends StatelessWidget {
  final double? width;
  final String? headlineText;
  const Headline({super.key, this.width, this.headlineText});

  @override
  Widget build(BuildContext context) {
    return   SizedBox(
                  width:  width ?? 280.w,
                  child: Text( headlineText ??
                    "Welcome back! Again!",
                    style: AppStyle.headlines,
                  ),
                );
  }
}