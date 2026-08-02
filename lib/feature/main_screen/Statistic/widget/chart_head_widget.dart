import 'package:finance_app_ui/core/styling/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChartHeadWidget extends StatelessWidget {
  const ChartHeadWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
                    left: 0,
                    right: 0,
                    child: Row(
                      mainAxisAlignment: .spaceBetween,
                      children: [
                        Text(
                          "Jan 28 - May 28, 2025",
                          style: AppStyle.subtitles,
                        ),
                        Container(
                          width: 105.w,
                          height: 30.h,
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          decoration: BoxDecoration(
                            color: Color(0xffB9C4FF),
                            borderRadius: BorderRadius.circular(12.r),
                          ),
                          child: Row(
                            crossAxisAlignment: .center,
                            children: [
                              Expanded(
                                child: Text(
                                  "Monthly",
                                  style: AppStyle.black16w600style.copyWith(
                                    fontSize: 14.sp,
                                  ),
                                ),
                              ),
                              Icon(Icons.arrow_drop_down),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
  }
}