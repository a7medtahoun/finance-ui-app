import 'package:finance_app_ui/core/app_assets/app_assets.dart';
import 'package:finance_app_ui/core/styling/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BackButtonWidget extends StatelessWidget {
  final double? width;
  final double? widthImg;
  final double? heightImg;
  final double? height;
  final double? raduis;
  final String? source;
  final void Function()? ontap;

  const BackButtonWidget({
    super.key,
    this.width,
    this.widthImg,
    this.heightImg,
    this.height,
    this.raduis,
    this.source,
    this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Align(
        alignment: AlignmentGeometry.centerLeft,
        child: Container(
          width: width?? 41.w,
          height:height?? 41.h,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: AppColor.scaffoldColor,
            border: Border.all(color: Color(0xffE8ECF4)),
            borderRadius: BorderRadius.circular(raduis?? 12.r),
          ),
          child: Image.asset(
             source?? AppAssets.iconImage,
            width:widthImg?? 8.5.w,
            height: heightImg?? 14.85.h,
          ),
        ),
      ),
    );
  }
}
