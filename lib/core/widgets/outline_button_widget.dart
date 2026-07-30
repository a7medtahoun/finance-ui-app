import 'package:finance_app_ui/core/styling/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OutlineButtonWidget extends StatelessWidget {
 final String? buttonText;
  final Color? borderColor;
  final double? width;
  final double? height;
  final double? borderRaduis;
  final double? fontsize;
  final Widget ? child;
  final void Function()? onpress;
  const OutlineButtonWidget({
    super.key,
    this.buttonText,
    this.borderColor,
    this.width,
    this.height,
    this.borderRaduis,
     this.onpress, this.fontsize, this.child,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        fixedSize: Size( width ?? 331.w, height ?? 56.h),
        side: BorderSide(
          color: borderColor ?? AppColor.primaryColor
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRaduis ?? 8.r),
         
        )
      ),
      onPressed: onpress,
     child: child ?? Text("uehihe"),
      );
  }
}
