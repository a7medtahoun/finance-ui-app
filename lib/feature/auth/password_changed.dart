import 'package:finance_app_ui/core/routing/app_routes.dart';
import 'package:finance_app_ui/core/styling/app_color.dart';
import 'package:finance_app_ui/core/widgets/custom_space.dart';
import 'package:finance_app_ui/core/widgets/primary_button_widget.dart';
import 'package:finance_app_ui/feature/auth/widgets/headline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class PasswordChanged extends StatelessWidget {
  const PasswordChanged({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(22),
          child: Center(
            child: Column(
              mainAxisAlignment: .center,
              children: [
                Image.asset("assets/images/Sticker.png"),
                CustomSpaceHeight(35.h),
                Headline(headlineText: "Password Changed!"),
                CustomSpaceHeight(8.h),
                
                   Container(
                    width: 226.w,
                    height: 40.h,
                    margin: EdgeInsets.only(left: 75 ,right: 70),
                     child: Text(
                      'Your password has been changed successfully.',
                      style: TextStyle(
                        color: AppColor.secondaryColor,
                        fontSize: 16.sp,
                      ),
                                       ),
                   ),
               
                CustomSpaceHeight(40.h),
                PrimaryButtonWidget(
                  onpress: () {
                    context.go(AppRoutes.loginscreen);
                  },
                  buttonText: "Back to Login",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
