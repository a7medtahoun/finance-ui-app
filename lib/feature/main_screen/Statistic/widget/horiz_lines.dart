import 'package:finance_app_ui/core/widgets/custom_space.dart';
import 'package:finance_app_ui/feature/main_screen/Statistic/widget/line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HorizLines extends StatelessWidget {
  const HorizLines({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
                    top: 60,
                    right: 15,
                    left: 40,
                    child: Column(
                      children: [
                        LineWidget(),
                        CustomSpaceHeight(34.h),
                        LineWidget(),
                        CustomSpaceHeight(34.h),
                        LineWidget(),
                        CustomSpaceHeight(34.h),
                        LineWidget(),
                        CustomSpaceHeight(34.h),
                        LineWidget(),
                      ],
                    ),
                  );
  }
}