import 'package:finance_app_ui/core/styling/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class XAxisLabelsWidget extends StatelessWidget {
  const XAxisLabelsWidget({super.key, this.label});
  final String? label;

  @override
  Widget build(BuildContext context) {
    return  Text(
                       label ??  "8k",
                          style: AppStyle.grey12w500style.copyWith(
                            fontSize: 14.sp,
                          ),
                        );
  }
}