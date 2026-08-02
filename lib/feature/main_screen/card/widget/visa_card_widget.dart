import 'package:finance_app_ui/core/app_assets/app_assets.dart';
import 'package:finance_app_ui/core/styling/app_color.dart';
import 'package:finance_app_ui/core/styling/app_style.dart';
import 'package:finance_app_ui/core/widgets/custom_space.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VisaCardWidget extends StatelessWidget {
  const VisaCardWidget({super.key, this.color, this.balance, this.visaNumber, this.expireDate});
  final Color? color;
  final String? balance;
  final String? visaNumber;
  final String? expireDate;

  @override
  Widget build(BuildContext context) {
    return Stack(
                  children: [
                    Container(
                      width: 327.w,
                      height: 179.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.r),
                        color:  color ??AppColor.primaryColor,
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      child: Image.asset(AppAssets.layer1, height: 100.h),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      child: Image.asset(AppAssets.layer1, height: 100.h),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      child: Image.asset(
                        AppAssets.layer2,
                        width: 200.w,
                        height: 140.h,
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      child: Image.asset(
                        AppAssets.layer2,
                        width: 200.w,
                        height: 1140.h,
                      ),
                    ),
                    Positioned(
                      top: 24,
                      left: 24,
                      child: Column(
                        crossAxisAlignment: .start,
                        children: [
                          Text("X-Card", style: AppStyle.white12w700style),
                          CustomSpaceHeight(18.h),
                          Text("Balance", style: AppStyle.subtitles),
                          CustomSpaceHeight(8.h),
                          Text( balance ??"23400 EG", style: AppStyle.white24w600style),
                        ],
                      ),
                    ),
                    CustomSpaceHeight(22.h),
                    Positioned(
                      left: 24,
                      bottom: 18,
                      child: Text(
                      visaNumber ?? "****  3434",
                        style: TextStyle(
                          color: Color(0xffFDFDFD),
                          fontSize: 16.sp,
                        ),
                      ),
                    ),
                    Positioned(
                      right: 24,
                      bottom: 24,
                      child: Text(
                        expireDate ??"12/24",
                        style: TextStyle(
                          color: Color(0xffFDFDFD),
                          fontSize: 16.sp,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 24,
                      right: 29,
                      child: Text("VISA", style: AppStyle.white24w600style),
                    ),
                  ],
                );
  }
}