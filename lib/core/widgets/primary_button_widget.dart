import 'package:finance_app_ui/core/styling/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrimaryButtonWidget extends StatelessWidget {
  final String? buttonText;
  final Color? buttonColor;
  final double? width;
  final double? height;
  final double? borderRaduis;
  final double? fontsize;
  final Color? textColor;
  final void Function()? onpress;
  const PrimaryButtonWidget({
    super.key,
    this.buttonText,
    this.buttonColor,
    this.width,
    this.height,
    this.borderRaduis,
    this.textColor, this.onpress, this.fontsize,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: Size( width ?? 331.w, height ?? 56.h),
        backgroundColor: buttonColor??AppColor.primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRaduis ?? 8.r)
        )
      ),
      onPressed: onpress,
     child: Text(buttonText ?? " ", style: TextStyle(
      color: textColor ?? Colors.white,fontSize: fontsize ?? 16.sp),));
  }
}
