import 'package:finance_app_ui/core/app_validators/app_validate.dart';
import 'package:finance_app_ui/core/routing/app_routes.dart';
import 'package:finance_app_ui/core/styling/app_color.dart';
import 'package:finance_app_ui/core/widgets/custom_space.dart';
import 'package:finance_app_ui/core/widgets/custom_textfield.dart';
import 'package:finance_app_ui/core/widgets/primary_button_widget.dart';
import 'package:finance_app_ui/core/widgets/back_button_widget.dart';
import 'package:finance_app_ui/feature/auth/widgets/headline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class CreateNewPassword extends StatefulWidget {
  const CreateNewPassword({super.key});

  @override
  State<CreateNewPassword> createState() => _CreateNewPasswordState();
}

class _CreateNewPasswordState extends State<CreateNewPassword> {
  GlobalKey<FormState> passKey = GlobalKey<FormState>();
  TextEditingController passController=TextEditingController();
  TextEditingController conrirmController=TextEditingController();
  bool ispassword=true;
  bool isconfirm=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(22),
          child: SingleChildScrollView(child: Column(
            crossAxisAlignment: .start,
            children: [
             BackButtonWidget(),
             CustomSpaceHeight(28.h),
             Headline(
              width: 310.w,
              headlineText: "Create new password",
             ),
             CustomSpaceHeight(10.h),
             SizedBox(
              width: 331.w,
              child: Text('''Your new password must be unique from those previously used.''',
              style: TextStyle(color: AppColor.secondaryColor,fontSize: 16.sp),),
            ),
            CustomSpaceHeight(32.h),
            Form(
              key:passKey ,
              child: Column(
                children: [
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
                        ispassword: isconfirm,
                        hinttext: "Confirm password",
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              isconfirm = !isconfirm;
                            });
                          },
                          icon: isconfirm
                              ? Icon(Icons.visibility_off)
                              : Icon(Icons.visibility),
                        ),
                      ),
                ],
              )),
              CustomSpaceHeight(38.h),
              PrimaryButtonWidget(
                onpress: () {
                  if(passKey.currentState!.validate()){
                    return context.go(AppRoutes.passwordchanged);
                  }
                  
                },
                buttonText: "Reset Password",
              )
 
            ],
          )),
        ),
      ),
    );
  }
}
