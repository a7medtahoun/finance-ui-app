import 'package:finance_app_ui/core/app_assets/app_assets.dart';
import 'package:finance_app_ui/core/styling/app_color.dart';
import 'package:finance_app_ui/feature/main_screen/Statistic/statistic_screen.dart';
import 'package:finance_app_ui/feature/main_screen/card/card_screen.dart';
import 'package:finance_app_ui/feature/main_screen/home/home_screen.dart';
import 'package:finance_app_ui/feature/main_screen/profile/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;
  List<Widget> Screens = [
    HomeScreen(),
    StatisticScreen(),
    CardScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Screens[currentIndex],
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: currentIndex,
        onTap: (i) => setState(() => currentIndex = i),
        items: [
          
          SalomonBottomBarItem(
            icon: SvgPicture.asset(
              AppAssets.home,
              colorFilter: ColorFilter.mode(
                currentIndex == 0
                    ? AppColor.primaryColor
                    : AppColor.secondaryColor,
                BlendMode.srcIn,
              ),
            ),
            title: Text("Home"),
            selectedColor: AppColor.primaryColor,
          ),

          
          SalomonBottomBarItem(
            icon: SvgPicture.asset(
              AppAssets.chart,
              colorFilter: ColorFilter.mode(
                currentIndex == 1
                    ? AppColor.primaryColor
                    : AppColor.secondaryColor,
                BlendMode.srcIn,
              ),
            ),
            title: Text("Statistic"),
            selectedColor: AppColor.primaryColor,
          ),
          SalomonBottomBarItem(
            icon: SvgPicture.asset(
              AppAssets.wallet,
              colorFilter: ColorFilter.mode(
                currentIndex == 2
                    ? AppColor.primaryColor
                    : AppColor.secondaryColor,
                BlendMode.srcIn,
              ),
            ),
            title: Text(" MyCard"),
            selectedColor: AppColor.primaryColor,
          ),

        
          SalomonBottomBarItem(
            icon: SvgPicture.asset(
              AppAssets.profile,
              colorFilter: ColorFilter.mode(
                currentIndex == 3
                    ? AppColor.primaryColor
                    : AppColor.secondaryColor,
                BlendMode.srcIn,
              ),
            ),
            title: Text("Profile"),
            selectedColor: AppColor.primaryColor,
          ),
        ],
      ),
    );
  }
}
