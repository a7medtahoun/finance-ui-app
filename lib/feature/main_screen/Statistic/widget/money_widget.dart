import 'package:finance_app_ui/core/styling/app_color.dart';
import 'package:finance_app_ui/core/styling/app_style.dart';
import 'package:finance_app_ui/core/widgets/custom_space.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MoneyWidget extends StatelessWidget {
  const MoneyWidget({super.key, this.icon, this.balance, this.outCome});
  final IconData? icon;
  final String? balance;
  final  String? outCome;
  @override
  Widget build(BuildContext context) {
    return  Container(
                          width: 156.w,
                          height: 140.h,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color.fromARGB(212, 185, 181, 181),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(12.r),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: .start,
                              children: [
                                Container(
                                  width: 48.w,
                                  height: 48.h,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: Color(0xffECF1F6),
                                    borderRadius: BorderRadius.circular(12.r),
                                  ),
                                  child:  Icon(icon ??Icons.trending_up ,color: AppColor.primaryColor,),
                                ),
                                CustomSpaceHeight(12.h),
                                Text( balance ?? "15000 EG", style: AppStyle.black16w600style,),
                                CustomSpaceHeight(4.h),
                                Text(outCome?? "Income", style:AppStyle.grey12w500style,)
                              ],
                            ),
                          ));
  }
}