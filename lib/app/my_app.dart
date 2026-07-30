import 'package:finance_app_ui/core/routing/route_generation_config.dart';
import 'package:finance_app_ui/core/styling/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   
    return ScreenUtilInit(
      designSize: const Size(375, 812),
    
      builder: (_ , child) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          theme: AppTheme.lightTheme,  
          routerConfig:RouteGenerationConfig.router,
        );
      },
    );
  }
}