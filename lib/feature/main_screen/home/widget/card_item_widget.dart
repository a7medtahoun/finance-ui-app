import 'package:finance_app_ui/core/app_assets/app_assets.dart';
import 'package:finance_app_ui/core/styling/app_color.dart';
import 'package:finance_app_ui/core/styling/app_style.dart';
import 'package:finance_app_ui/core/widgets/custom_space.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardItemWidget extends StatelessWidget {
  const CardItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Stack(
          children: [
            Container(
              width: 207.w,
              height: 263.h,
              decoration: BoxDecoration(
                color: AppColor.primaryColor,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: Image.asset(AppAssets.layer1),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: Image.asset(AppAssets.layer1),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: Image.asset(AppAssets.layer2, width: 200.w, height: 200.h),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: Image.asset(AppAssets.layer2, width: 200.w, height: 200.h),
            ),

            Positioned(
              top: 24,
              left: 24,
              child: Column(
                crossAxisAlignment: .start,
                children: [
                  Text("X-Card", style: AppStyle.white12w700style),
                  CustomSpaceHeight(51.h),
                  Text("Balance", style: AppStyle.subtitles),
                  CustomSpaceHeight(8.h),
                  Text("23400 EG", style: AppStyle.white24w600style),
                ],
              ),
            ),
            Positioned(
              left: 24,
              bottom: 24,
              child: Text(
                "****  3434",
                style: TextStyle(color: Color(0xffFDFDFD), fontSize: 16.sp),
              ),
            ),
            Positioned(
              right: 24,
              bottom: 24,
              child: Text(
                "12/24",
                style: TextStyle(color: Color(0xffFDFDFD), fontSize: 16.sp),
              ),
            ),
          ],
        );
  }
}