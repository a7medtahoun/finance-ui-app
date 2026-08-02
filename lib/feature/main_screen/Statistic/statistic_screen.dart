import 'package:finance_app_ui/core/styling/app_color.dart';
import 'package:finance_app_ui/core/widgets/custom_space.dart';
import 'package:finance_app_ui/core/widgets/header_widget.dart';
import 'package:finance_app_ui/feature/main_screen/Statistic/widget/chart_Widget.dart';
import 'package:finance_app_ui/feature/main_screen/Statistic/widget/chart_head_widget.dart';
import 'package:finance_app_ui/feature/main_screen/Statistic/widget/column_name_widget.dart';
import 'package:finance_app_ui/feature/main_screen/Statistic/widget/horiz_lines.dart';
import 'package:finance_app_ui/feature/main_screen/Statistic/widget/money_widget.dart';
import 'package:finance_app_ui/feature/main_screen/Statistic/widget/x_axis_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StatisticScreen extends StatelessWidget {
  const StatisticScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              HeaderWidget(title: "Reload"),
              CustomSpaceHeight(50.h),
              Stack(
                children: [
                  Container(
                    width: 327.w,
                    height: 236.h,
                    decoration: BoxDecoration(),
                  ),
                  ChartHeadWidget(),
                  XAxisWidget(),
                   HorizLines(),
                  ChartWidget(),
                  ChartWidget(
                    left: 64.w,
                    top: 106.h,
                    height: 89.h,
                    color: AppColor.visaColor,
                  ),
                  ChartWidget(
                    left: 120.w,
                    top: 60.h,
                    height: 134.h,
                    color: AppColor.primaryColor,
                  ),
                  ChartWidget(
                    left: 135.w,
                    top: 105.h,
                    height: 89.h,
                    color: AppColor.visaColor,
                  ),
                  ChartWidget(
                    left: 193.w,
                    top: 60.h,
                    height: 134.h,
                    color: AppColor.primaryColor,
                  ),
                  ChartWidget(
                    left: 208.w,
                    top: 105.h,
                    height: 89.h,
                    color: AppColor.visaColor,
                  ),
                  ChartWidget(
                    left: 258.w,
                    top: 61.h,
                    height: 134.h,
                    color: AppColor.primaryColor,
                  ),
                  ChartWidget(
                    left: 274.w,
                    top: 105.h,
                    height: 89.h,
                    color: AppColor.visaColor,
                  ),
                ColumnNameWidget()
                ],
              ),
              CustomSpaceHeight(20.h),
               SizedBox(
                width: 300.w,
                height: 200.h,
                 child: GridView.count(
                      crossAxisCount: 2,
                      crossAxisSpacing: 16.w,
                      mainAxisSpacing: 16.h,
                      children: [
                      MoneyWidget(
                        icon: Icons.trending_down,
                      ),
                      MoneyWidget(
                        icon: Icons.trending_up,
                        balance: "35000 EG",
                        outCome: "OutCome",
                      ),
                      ]),
               )
            ],
          ),
        ),
      ),
    );
  }
}
