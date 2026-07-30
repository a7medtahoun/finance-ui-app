import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSpaceWidth extends StatelessWidget {
  final double? width;
  const CustomSpaceWidth(this.width, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? 10.w,
    );
  }
}


class CustomSpaceHeight extends StatelessWidget {
  final double? height;
  const CustomSpaceHeight(this.height, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 10.h,
    );
  }
}