import 'package:finance_app_ui/core/app_assets/app_assets.dart';
import 'package:finance_app_ui/core/app_validators/app_validate.dart';
import 'package:finance_app_ui/core/routing/app_routes.dart';
import 'package:finance_app_ui/core/styling/app_style.dart';
import 'package:finance_app_ui/core/widgets/custom_space.dart';
import 'package:finance_app_ui/core/widgets/custom_textfield.dart';
import 'package:finance_app_ui/core/widgets/outline_button_widget.dart';
import 'package:finance_app_ui/core/widgets/primary_button_widget.dart';
import 'package:finance_app_ui/core/widgets/back_button_widget.dart';
import 'package:finance_app_ui/feature/auth/widgets/custom_last_widget.dart';
import 'package:finance_app_ui/feature/auth/widgets/custom_orLogin_widget.dart';
import 'package:finance_app_ui/feature/auth/widgets/headline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool ispassword = true;
  GlobalKey<FormState> loginKey = GlobalKey<FormState>();
  TextEditingController emailController=TextEditingController();
  TextEditingController passController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: .start,
              children: [
                BackButtonWidget(
                  ontap: () {
                  }
                ),
                CustomSpaceHeight(28.h),
                Headline(),
                CustomSpaceHeight(32.h),
                Form(
                  key: loginKey,
                  child: Column(
                    children: [
                      CustomTextfield(
                        controller: emailController,
                        keyboardType: .emailAddress,
                        validator: AppValidate.validateEmail,
                        hinttext: "Enter your email",
                      ),
                      CustomSpaceHeight(15.h),
                      CustomTextfield(
                        controller: passController,
                        keyboardType: .visiblePassword,
                        validator: AppValidate.validatePassword,
                        ispassword: ispassword,
                        hinttext: "Enter your password",
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              ispassword = !ispassword;
                            });
                          },
                          icon: ispassword
                              ? Icon(Icons.visibility_off)
                              : Icon(Icons.visibility),
                        ),
                      ),
                    ],
                  ),
                ),
                CustomSpaceHeight(15.h),
                Align(
                  alignment: AlignmentGeometry.centerEnd,
                  child: InkWell(
                    onTap: () {
                    context.go(AppRoutes.forgotPaswordscreen);
                    },
                    child: Text(
                      "Forgot Password?",
                      style: AppStyle.grey14w600style,
                    ),
                  ),
                ),
                CustomSpaceHeight(30.h),
                PrimaryButtonWidget(
                  width: 331.w,
                  height: 56.h,
                  onpress: () {
                    if (loginKey.currentState!.validate()) {
                    context.go(AppRoutes.mainScreen);
                    }
                  },
                  buttonText: "Login",
                ),
                CustomSpaceHeight(35.h),

                CustomOrloginWidget(),

                CustomSpaceHeight(22.h),
                Row(
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    OutlineButtonWidget(
                      onpress: () {},
                      width: 105.w,
                      height: 56.h,
                      borderColor: Color(0xffE8ECF4),
                      child: Image.asset(AppAssets.faceIcon),
                    ),
                    OutlineButtonWidget(
                      onpress: () {},
                      width: 105.w,
                      height: 56.h,
                      borderColor: Color(0xffE8ECF4),
                      child: Image.asset(AppAssets.googleIcon),
                    ),
                    OutlineButtonWidget(
                      onpress: () {},
                      width: 105.w,
                      height: 56.h,
                      borderColor: Color(0xffE8ECF4),
                      child: Image.asset(AppAssets.appleIcon),
                    ),
                  ],
                ),
                CustomSpaceHeight(80.h),
                  getLastWidget(ontap:  (){
                    context.go(AppRoutes.registerscreen);
                   }, clickable: "RegisterNow")
              ],
            ),
          ),
        ),
      ),
    );
  }
}
