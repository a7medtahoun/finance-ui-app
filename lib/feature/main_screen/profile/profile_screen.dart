import 'package:finance_app_ui/core/app_assets/app_assets.dart';
import 'package:finance_app_ui/core/widgets/custom_space.dart';
import 'package:finance_app_ui/core/widgets/header_widget.dart';
import 'package:finance_app_ui/feature/main_screen/profile/widget/field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return 
       SafeArea(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: .start,
              children: [
                HeaderWidget(title: "My Profile", icon: Icons.edit),
                CustomSpaceHeight(39.h),
                Align(
                  child: CircleAvatar(
                    radius: 70.r,
                    backgroundImage: AssetImage(AppAssets.character),
                  ),
                ),
                CustomSpaceHeight(10.h),
                FieldWidget(),
                Divider(),
                CustomSpaceHeight(10.h),
                FieldWidget(label: "Email", anwser: "Ahmed@gmail.com"),
                Divider(),
                CustomSpaceHeight(10.h),
                FieldWidget(label: "Phone Number", anwser: '0100000001'),
                Divider(),
                CustomSpaceHeight(10.h),
                FieldWidget(label: "Address", anwser: "Cairo,Egypt"),
                Divider(),
              ],
            ),
          ),
        ),
      )
    ;
  }
}
