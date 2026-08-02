import 'package:finance_app_ui/core/widgets/custom_space.dart';
import 'package:finance_app_ui/feature/main_screen/Statistic/widget/x_axis_Labels_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class XAxisWidget extends StatelessWidget {
  const XAxisWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Positioned(
                    top: 50,
                    left: 15,
                    child: Column(
                      children: [
                        XAxisLabelsWidget(),
                        CustomSpaceHeight(16.h),
                        XAxisLabelsWidget(label: "6k"),
                        CustomSpaceHeight(16.h),
                        XAxisLabelsWidget(label: "4k"),
                        CustomSpaceHeight(16.h),
                        XAxisLabelsWidget(label: "2k"),
                        CustomSpaceHeight(16.h),
                        XAxisLabelsWidget(label: "0"),
                        CustomSpaceHeight(16.h),
                      ],
                    ),
                  );
  }
}