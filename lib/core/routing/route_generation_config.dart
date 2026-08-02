import 'package:finance_app_ui/core/routing/app_routes.dart';
import 'package:finance_app_ui/feature/auth/create_new_password.dart';
import 'package:finance_app_ui/feature/auth/forgot_password_screen.dart';
import 'package:finance_app_ui/feature/auth/login_screen.dart';
import 'package:finance_app_ui/feature/main_screen/main_screen.dart';
import 'package:finance_app_ui/feature/otp/otp_screen.dart';
import 'package:finance_app_ui/feature/auth/password_changed.dart';
import 'package:finance_app_ui/feature/auth/register_screen.dart';
import 'package:finance_app_ui/feature/onboard_screen/onborad_screen.dart';

import 'package:go_router/go_router.dart';

class RouteGenerationConfig {
  static GoRouter router= GoRouter(
    initialLocation: AppRoutes.onboardscreen,
    routes: [
      GoRoute(
        name: AppRoutes.onboardscreen,
        path: AppRoutes.onboardscreen,
      builder: (context, state) =>  const OnboradScreen(),
      ),
      GoRoute(
        name: AppRoutes.loginscreen,
        path: AppRoutes.loginscreen,
      builder: (context, state) =>  const LoginScreen(),
      ),
        GoRoute(
           name: AppRoutes.registerscreen,
          path: AppRoutes.registerscreen,
      builder: (context, state) =>  const RegisterScreen(),
      ),
        GoRoute(
           name: AppRoutes.forgotPaswordscreen,
          path: AppRoutes.forgotPaswordscreen,
      builder: (context, state) =>  const ForgotPasswordScreen(),
      ),
          GoRoute(
           name: AppRoutes.createNewPassword,
          path: AppRoutes.createNewPassword,
      builder: (context, state) =>  const CreateNewPassword(),
      ),
          GoRoute(
           name: AppRoutes.passwordchanged,
          path: AppRoutes.passwordchanged,
      builder: (context, state) =>  const PasswordChanged(),
      ),
        GoRoute(
           name: AppRoutes.otpScreen,
          path: AppRoutes.otpScreen,
      builder: (context, state) =>  const OtpScreen(),
      ),
        GoRoute(
           name: AppRoutes.mainScreen,
          path: AppRoutes.mainScreen,
      builder: (context, state) =>  const MainScreen(),
      ),
          
    
    ]
  );
}
