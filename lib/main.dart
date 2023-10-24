import 'package:flutter/material.dart';
import 'package:shoes_ecommerce/config/thems/app_colors.dart';
import 'package:shoes_ecommerce/features/splash/splash_screen.dart';

import 'config/routing/routes.dart';
import 'features/onborading/view/onboarding_screen.dart';
import 'features/signIn/view/signIn_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shose',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
        useMaterial3: true,
      ),
      routes: {
        Routes.splash: (context) {
          return const SplashScreen();
        },
        Routes.onBoarding: (context) {
          return const OnboardingScreen();
        },
        Routes.signIn: (context) {
          return const SignInScreen();
        },
      },
    );
  }
}
