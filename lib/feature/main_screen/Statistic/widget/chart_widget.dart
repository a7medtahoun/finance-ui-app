import 'package:finance_app_ui/core/styling/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChartWidget extends StatelessWidget {
  const ChartWidget({super.key, this.left, this.top, this.color, this.height});
   final double? left;
   final double? top;
   final double? height;
   final Color? color;
  @override
  Widget build(BuildContext context) {
    return    Positioned(
                    left: left ?? 48.w,
                    top: top ?? 60.h,
                    child: Row(
                      children: [
                        Container(
                          width: 12.w,
                          height: height ?? 134.h,
                          decoration: BoxDecoration(
                            color: color ?? AppColor.primaryColor,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12),
                              topRight: Radius.circular(12),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
  }
}