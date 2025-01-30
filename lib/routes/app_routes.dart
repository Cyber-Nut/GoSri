import 'package:flutter/material.dart';
import 'package:gosri/presentation/authentication_screens/choose_role_screen.dart';
import 'package:gosri/presentation/authentication_screens/set_newpassword_screen.dart';

import '../presentation/authentication_screens/otp_screen.dart';
import '../presentation/authentication_screens/set_password_screen.dart';
import '../presentation/authentication_screens/signin_screen.dart';
import '../presentation/authentication_screens/signup_screen.dart';
import '../presentation/authentication_screens/welcome_screen.dart';

class AppRoutes {
  static const String roleScreen =
      '/lib/presentation/authentication_screens/choose_role_screen.dart';
  static const String welcomeScreen =
      '/lib/presentation/authentication_screens/welcome_screen.dart';
  static const String signUpScreen =
      '/lib/presentation/authentication_screens/signup_screen.dart';
  static const String signInScreen =
      '/lib/presentation/authentication_screens/signin_screen.dart';
  static const String otpScreen =
      '/lib/presentation/authentication_screens/otp_screen.dart';
  static const String setPasswordScreen =
      '/lib/presentation/authentication_screens/set_password_screen.dart';
  static const String setNewPasswordScreen =
      'lib/presentation/authentication_screens/set_newpassword_screen.dart';
  static const String initialRoute = '/welcome';

  static Map<String, WidgetBuilder> routes = {
    roleScreen: (context) => ChooseRoleScreen(),
    welcomeScreen: (context) => WelcomeScreen(),
    signUpScreen: (context) => SignupScreen(),
    signInScreen: (context) => SigninScreen(),
    otpScreen: (context) => OtpScreen(),
    setPasswordScreen: (context) => SetPasswordScreen(),
    setNewPasswordScreen: (context) => SetNewPasswordScreen(),
    initialRoute: (context) => WelcomeScreen(),
  };
}
