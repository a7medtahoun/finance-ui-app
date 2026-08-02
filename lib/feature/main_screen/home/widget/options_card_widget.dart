import 'package:finance_app_ui/core/styling/app_color.dart';
import 'package:finance_app_ui/core/styling/app_style.dart';
import 'package:finance_app_ui/core/widgets/custom_space.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OptionsCardWidget extends StatelessWidget {
  const OptionsCardWidget({super.key, this.icon,  this.cardTitle, this.cardDescription});
 final IconData? icon;
 final String? cardTitle;
 final String ?cardDescription;

  @override
  Widget build(BuildContext context) {
    return Container(
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
                            children: [
                              Container(
                                width: 48.w,
                                height: 48.h,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: Color(0xffECF1F6),
                                  borderRadius: BorderRadius.circular(12.r),
                                ),
                                child:  Icon(icon ??Icons.send ,color: AppColor.primaryColor,),
                              ),
                              CustomSpaceHeight(12.h),
                              Text( cardTitle ??"Send money", style: AppStyle.black16w600style,),
                              CustomSpaceHeight(4.h),
                              Text(cardDescription ??"Take acc to acc", style:AppStyle.grey12w500style,)
                            ],
                          ),
                        ),
                      );
  }
}