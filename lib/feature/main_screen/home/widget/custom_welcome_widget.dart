import 'package:finance_app_ui/core/app_assets/app_assets.dart';
import 'package:finance_app_ui/core/styling/app_color.dart';
import 'package:finance_app_ui/core/styling/app_style.dart';
import 'package:finance_app_ui/core/widgets/custom_space.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomWelcomeWidget extends StatelessWidget {
  const CustomWelcomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 30.r,
                        backgroundImage: AssetImage(AppAssets.character),
                      ),
                      CustomSpaceWidth(11.w),
                      Column(
                        crossAxisAlignment: .start,
                        children: [
                          Text("Welcome back", style: AppStyle.grey14w600style),
                          Text(
                            "Ahmed Mohamed",
                            style: AppStyle.black16w600style,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    width: 50.w,
                    height: 50.h,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: AppColor.secondaryColor),
                    ),
                    child: Icon(
                      Icons.notifications,
                      color: AppColor.primaryColor,
                    ),
                  ),
                ],
              );
  }
}