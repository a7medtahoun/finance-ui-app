import 'package:finance_app_ui/core/styling/app_style.dart';
import 'package:finance_app_ui/core/widgets/custom_space.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ColumnNameWidget extends StatelessWidget {
  const ColumnNameWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Positioned(
                    bottom: 15.h,
                    left: 48.w,
                    child: Row(
                      children: [
                        Text("Jan", style: AppStyle.grey14w600style),
                        CustomSpaceWidth(50.w),
                        Text("Feb", style: AppStyle.grey14w600style),
                        CustomSpaceWidth(50.w),
                        Text("Mar", style: AppStyle.grey14w600style),
                        CustomSpaceWidth(43.w),
                        Text("Apr", style: AppStyle.grey14w600style),
                      ],
                    ),
                  );
  }
}