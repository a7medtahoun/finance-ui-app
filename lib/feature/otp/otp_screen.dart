import 'package:finance_app_ui/core/routing/app_routes.dart';
import 'package:finance_app_ui/core/styling/app_color.dart';
import 'package:finance_app_ui/core/widgets/custom_space.dart';
import 'package:finance_app_ui/core/widgets/primary_button_widget.dart';
import 'package:finance_app_ui/core/widgets/back_button_widget.dart';
import 'package:finance_app_ui/feature/auth/widgets/custom_last_widget.dart';
import 'package:finance_app_ui/feature/auth/widgets/headline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final controller = PinInputController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(22),
          child: Column(
            crossAxisAlignment: .start,
            children: [
              BackButtonWidget(ontap: () {}),
              CustomSpaceHeight(28.h),
              Headline(headlineText: "OTP Verification"),
              CustomSpaceHeight(10.h),
              SizedBox(
                width: 331.w,
                child: Text(
                  '''Enter the verification code we just sent on your email address.''',
                  style: TextStyle(
                    color: AppColor.secondaryColor,
                    fontSize: 16.sp,
                  ),
                ),
              ),
              CustomSpaceHeight(32.h),
              PinInput(
                obscureText: true,
                length: 4,
                builder: (context, cells) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: cells.map((cell) {
                      return Container(
                        width: 60,
                        height: 60,
                        margin: EdgeInsets.symmetric(horizontal: 8),
                        decoration: BoxDecoration(
                          border: cell.isFocused?Border.all(
                            width: 3,
                            color: Colors.black
                          ):null,
                          shape: BoxShape.circle,
                          color: cell.isFocused
                              ? AppColor.primaryColor
                              : Colors.grey[200],
                        ),
                        child: Center(
                          child: Text(
                            cell.character ?? '',
                            style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),
                          ),
                        ),
                      );
                    }).toList(),
                  );
                },
              ),
              CustomSpaceHeight(38.h),
              PrimaryButtonWidget(
                onpress: () {
                  context.go(AppRoutes.registerscreen);
                },
                buttonText: "Verify",
              ),
              Spacer(),
              getLastWidget(
                ontap: () {
                  context.go(AppRoutes.otpScreen);
                },
                clickable: "Resend",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
