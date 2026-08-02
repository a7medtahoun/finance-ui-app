import 'package:finance_app_ui/core/styling/app_style.dart';
import 'package:finance_app_ui/core/widgets/custom_space.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FieldWidget extends StatelessWidget {
  const FieldWidget({super.key, this.label, this.anwser});
 final String? label;
 final String? anwser;
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
              width: 337.w,
              height: 78.h,
              child: Column(
                crossAxisAlignment: .start,
                children: [
                  Text( label??"Full Name",style: AppStyle.subtitles,),
                  CustomSpaceHeight(16.h),
                  Text( anwser??"AhmedMohamed",style: AppStyle.black16w600style,),
                ],
              ),
            );
  }
}