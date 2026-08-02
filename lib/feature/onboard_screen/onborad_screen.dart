import 'package:finance_app_ui/core/app_assets/app_assets.dart';
import 'package:finance_app_ui/core/routing/app_routes.dart';
import 'package:finance_app_ui/core/styling/app_color.dart';
import 'package:finance_app_ui/core/styling/app_style.dart';
import 'package:finance_app_ui/core/widgets/custom_space.dart';
import 'package:finance_app_ui/core/widgets/outline_button_widget.dart';
import 'package:finance_app_ui/core/widgets/primary_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class OnboradScreen extends StatelessWidget {
  const OnboradScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(AppAssets.onboard1),
            CustomSpaceHeight(21.h),
            PrimaryButtonWidget(
              onpress: () {
                GoRouter.of(context).pushNamed(AppRoutes.mainScreen);
              },
              width: 331.w,
              height: 56.h,
              buttonText: "Login",
            ),
            CustomSpaceHeight(15.h),
            OutlineButtonWidget(
              onpress: () {
                 GoRouter.of(context).pushNamed( AppRoutes.registerscreen);
              },
              width: 331.w,
              height: 56.h,
              child: Text(
                "Register",
                style: TextStyle(color: AppColor.primaryColor),
              ),
            ),
            CustomSpaceHeight(46.h),
            Text(
              "Continue as a guest",
              style: AppStyle.black16w600style.copyWith(
                color: Color(0xff202955),
                decoration: TextDecoration.underline,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
