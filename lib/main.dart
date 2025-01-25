import 'package:flutter/material.dart';
import 'package:gosri/presentations/authentication_screens/choose_role_screen.dart';
import 'package:gosri/presentations/authentication_screens/signin_screen.dart';
import 'package:gosri/presentations/authentication_screens/signup_screen.dart';
import 'package:gosri/presentations/authentication_screens/welcome_screen.dart';
import 'package:gosri/widgets/colors.dart';

import 'presentations/authentication_screens/otp_screen.dart';
import 'presentations/authentication_screens/set_password_screen.dart';

// Screens

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme(
          brightness: Brightness.light,
          primary: AppColors.primary,
          secondary: AppColors.secondary,
          error: AppColors.error,
          surface: AppColors.background,
          background: AppColors.background,
          onPrimary: Colors.white, // Text color on primary
          onSecondary: Colors.black, // Text color on secondary
          onSurface: Colors.black, // Text color on surface
          onError: Colors.white, // Text color on error
        ),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/welcome',
      routes: {
        '/welcome': (context) => WelcomeScreen(),
        '/chooseRole': (context) => ChooseRoleScreen(),
        '/signUp': (context) => SignupScreen(),
        '/signIn': (context) => SigninScreen(),
        '/otp': (context) => OtpScreen(),
        '/setPassword': (context) => SetPasswordScreen(),
      },
    );
  }
}
