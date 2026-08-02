
import 'package:finance_app_ui/core/styling/app_color.dart';
import 'package:finance_app_ui/core/widgets/custom_space.dart';
import 'package:finance_app_ui/feature/main_screen/card/widget/visa_card_widget.dart';
import 'package:finance_app_ui/core/widgets/header_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return 
       SafeArea(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: SingleChildScrollView(
            child: Column(
              children: [
                HeaderWidget(),
                CustomSpaceHeight(24.h),
                VisaCardWidget(),
                CustomSpaceHeight(24.h),
                VisaCardWidget(
                  color: AppColor.visaColor,
                  balance: "3209 EG",
                  visaNumber: "****  4545",
                  expireDate: "1 / 15",
                ),
              ],
            ),
          ),
        ),
      )
    ;
  }
}
