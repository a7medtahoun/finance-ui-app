
import 'package:finance_app_ui/core/widgets/custom_space.dart';
import 'package:finance_app_ui/feature/main_screen/home/widget/custom_CarouselSlider_widget.dart';
import 'package:finance_app_ui/feature/main_screen/home/widget/custom_welcome_widget.dart';
import 'package:finance_app_ui/feature/main_screen/home/widget/options_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return 
       SafeArea(
        child: Padding(
          padding: EdgeInsetsGeometry.only(left: 24, right: 24),
          child: SingleChildScrollView(
            child: Column(
              children: [
                CustomSpaceHeight(18.h),
                CustomWelcomeWidget(),
                CustomSpaceHeight(24.h),
                CustomCarouselsliderWidget(),
                CustomSpaceHeight(24.h),
                SizedBox(
                  height: 380,
                  child: GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 16.w,
                    mainAxisSpacing: 16.h,
                    children: [
                      OptionsCardWidget(),
                      OptionsCardWidget(
                        icon: Icons.wallet,
                        cardTitle: "Pay the bill",
                        cardDescription: "Lorem ipsum",
                      ),
                      OptionsCardWidget(
                        icon: Icons.send,
                        cardTitle: "Request",
                        cardDescription: "Lorem ipsum",
                      ),
                      OptionsCardWidget(
                        icon: Icons.person,
                        cardTitle: "Contact",
                        cardDescription: "Lorem ipsum",
                      ),
                    ],
                  ),
                  
                ),
              ],
            ),
          ),
        ),
      )
    ;
  }
}
