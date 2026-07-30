import 'package:finance_app_ui/core/app_assets/app_assets.dart';
import 'package:finance_app_ui/core/app_validators/app_validate.dart';
import 'package:finance_app_ui/core/routing/app_routes.dart';
import 'package:finance_app_ui/core/widgets/custom_space.dart';
import 'package:finance_app_ui/core/widgets/custom_textfield.dart';
import 'package:finance_app_ui/core/widgets/outline_button_widget.dart';
import 'package:finance_app_ui/core/widgets/primary_button_widget.dart';
import 'package:finance_app_ui/feature/auth/widgets/back_button_widget.dart';
import 'package:finance_app_ui/feature/auth/widgets/custom_last_widget.dart';
import 'package:finance_app_ui/feature/auth/widgets/custom_orLogin_widget.dart';
import 'package:finance_app_ui/feature/auth/widgets/headline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool ispassword=true;
  bool isConfirm=true;
  GlobalKey<FormState> registerKey = GlobalKey<FormState>();
  TextEditingController nameController=TextEditingController();
  TextEditingController emailController=TextEditingController();
  TextEditingController passController=TextEditingController();
  TextEditingController conrirmController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(22),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: .start,
              mainAxisAlignment: .center,
              children: [
                BackButtonWidget(
                  ontap: () {
                   context.go(AppRoutes.onboardscreen);}
                ),
                CustomSpaceHeight(28.h),
                Headline(
                  headlineText: "Hello! Register to get started",
                  width: 331.w,
                ),
                CustomSpaceHeight(32.h),
                  Form(
                  key: registerKey,
                  child: Column(
                    children: [
                        CustomTextfield(
                          controller: nameController,
                        keyboardType: .text,
                        validator: AppValidate.validateName,
                        hinttext: "Username",
                      ),
                      CustomSpaceHeight(15.h),
                      CustomTextfield(
                        controller: emailController,
                        keyboardType: .emailAddress,
                        validator: AppValidate.validateEmail,
                        hinttext: "Email",
                      ),
                      CustomSpaceHeight(15.h),
                      CustomTextfield(
                        controller: passController,
                        keyboardType: .visiblePassword,
                        validator: AppValidate.validatePassword,
                        ispassword: ispassword,
                        hinttext: "Password",
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
                        CustomSpaceHeight(15.h),
                      CustomTextfield(
                        controller: conrirmController,
                        keyboardType: .visiblePassword,
                        validator: AppValidate.Confirm(passController),
                        ispassword: isConfirm,
                        hinttext: "Confirm password",
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              isConfirm = !isConfirm;
                            });
                          },
                          icon: isConfirm
                              ? Icon(Icons.visibility_off)
                              : Icon(Icons.visibility),
                        ),
                      ),
                      CustomSpaceHeight(30.h),
                       PrimaryButtonWidget(
                  width: 331.w,
                  height: 56.h,
                  onpress: () {
                    if (registerKey.currentState!.validate()) {}
                  },
                  buttonText: "Register",
                ),
                    ],
                  ),
                ),
                 CustomSpaceHeight(35.h),
                CustomOrloginWidget(
                  text: 'OrRegisterwith',
                ),
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
               
                  
                   getLastWidget(ontap: (){
                   context.go(AppRoutes.navigationBar);
                   },)
              
              ],
            ),
          ),
        ),
      ),
    );
  }
}
