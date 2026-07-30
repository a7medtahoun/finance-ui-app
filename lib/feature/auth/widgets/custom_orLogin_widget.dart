import 'package:finance_app_ui/core/styling/app_style.dart';
import 'package:finance_app_ui/core/widgets/custom_space.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomOrloginWidget extends StatelessWidget {
   final String? text;
   const CustomOrloginWidget({super.key, this.text});
 

  @override
  Widget build(BuildContext context) {
    return Row(
                children: [
                  SizedBox(width: 95.w, child: Divider()),
                  CustomSpaceWidth(12),
                  Text( text ??
                    "Or Login with",
                    style: AppStyle.black16w600style.copyWith(
                      color: Color(0xff6A707C),
                    ),
                  ),
                  CustomSpaceWidth(12),
                  SizedBox(width: 95.w, child: Divider()),
                ],
              );
  }
}