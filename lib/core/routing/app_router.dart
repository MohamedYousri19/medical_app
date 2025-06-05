import 'package:flutter/material.dart';
import 'package:medical_app/core/routing/routes.dart';
import 'package:medical_app/features/login/ui/screens/login_screen.dart';
import '../../features/onboarding/ui/screens/on_boarding_screen.dart';
import '../../features/sign_up/screens/sign_up_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {

    // final arguments = settings.arguments ;

    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnBoardingScreen());

      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => const LoginScreen());

      case Routes.signUpScreen:
        return MaterialPageRoute(builder: (_) => const SignUpScreen());

      default:
        return MaterialPageRoute(builder: (_) => Scaffold(
          body: Center(
            child: Text('No Route Found ${settings.name}'),
          ),
        ));

    }

  }
}
