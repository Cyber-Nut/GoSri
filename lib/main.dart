import 'package:flutter/material.dart';
import 'package:gosri/routes/app_routes.dart';
import 'package:gosri/widgets/colors.dart';

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
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.routes,
    );
  }
}
