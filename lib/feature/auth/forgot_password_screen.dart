import 'package:finance_app_ui/core/app_validators/app_validate.dart';
import 'package:finance_app_ui/core/routing/app_routes.dart';
import 'package:finance_app_ui/core/styling/app_color.dart';
import 'package:finance_app_ui/core/widgets/custom_space.dart';
import 'package:finance_app_ui/core/widgets/custom_textfield.dart';
import 'package:finance_app_ui/core/widgets/primary_button_widget.dart';
import 'package:finance_app_ui/feature/auth/widgets/back_button_widget.dart';
import 'package:finance_app_ui/feature/auth/widgets/headline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ForgotPasswordScreen extends StatefulWidget {
 const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
TextEditingController emailController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(child: Padding(padding: EdgeInsets.all(22),child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: .start,
          children: [
            BackButtonWidget(
              ontap: () {
                context.go(AppRoutes.loginscreen);
              },
            ),
            CustomSpaceHeight(28.h),
            Headline(
              headlineText:"Forgot Password?" ,
            ),
            CustomSpaceHeight(10.h),
            SizedBox(
              width: 331.w,
              child: Text('''Don't worry! It occurs. Please enter the email address linked with your account.''',
              style: TextStyle(color: AppColor.secondaryColor,fontSize: 16.sp),),

            ),
            CustomSpaceHeight(32.h),
             CustomTextfield(
                        controller: emailController,
                        keyboardType: .emailAddress,
                        validator: AppValidate.validateEmail,
                        hinttext: "Enter your email",
                      ),
                       CustomSpaceHeight(38.h),
                       PrimaryButtonWidget(
                        onpress: () {
                          context.go(AppRoutes.createNewPassword);
                        },
                        buttonText: "Send Code",
                       )
          ],
        ),
      ),)),
    );
  }
}