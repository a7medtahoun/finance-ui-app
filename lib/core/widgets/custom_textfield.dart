import 'package:finance_app_ui/core/styling/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextfield extends StatelessWidget {
  final String? hinttext;
  final double? radius;
  final double? weith;
  final double? heigt;
  final bool? ispassword;
  final Color? borderColor;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  TextEditingController controller = TextEditingController();

  CustomTextfield({
    super.key,
    this.hinttext,
    this.suffixIcon,
    required this.validator,
    required this.keyboardType,
    required this.controller,
    this.radius,
    this.borderColor,
    this.weith,
    this.heigt,
    this.ispassword,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: weith ?? 331.w,
      height: heigt ?? 75.h,
      child: TextFormField(
        controller: controller,
        obscureText: ispassword ?? false,
        validator: validator,
        autofocus: false,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(radius ?? 8.r),
            borderSide: BorderSide(color: AppColor.secondaryColor),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(radius ?? 8.r),
            borderSide: BorderSide(color: AppColor.primaryColor),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(radius ?? 8.r),
            borderSide: BorderSide(color: Colors.red),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(radius ?? 8.r),
            borderSide: BorderSide(color: Colors.red),
          ),
          hintText: hinttext ?? "",
          helperText: " ",
          hintStyle: TextStyle(
            fontSize: 15.sp,
            fontWeight: FontWeight.w500,
            color: AppColor.secondaryColor,
          ),
          contentPadding: EdgeInsets.symmetric(
            horizontal: 18.w,
            vertical: 18.h,
          ),
          suffixIcon: suffixIcon,
          filled: true,
          fillColor: Color(0xffF7F8F9),
        ),
      ),
    );
  }
}
