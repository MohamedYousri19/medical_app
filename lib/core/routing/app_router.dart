import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medical_app/core/routing/routes.dart';
import 'package:medical_app/features/login/ui/screens/login_screen.dart';
import '../../features/onboarding/ui/screens/on_boarding_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {

    // final arguments = settings.arguments ;

    switch (settings.name) {
      case Routers.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnBoardingScreen());

      case Routers.loginScreen:
        return MaterialPageRoute(builder: (_) => const LoginScreen());

      default:
        return MaterialPageRoute(builder: (_) => Scaffold(
          body: Center(
            child: Text('No Route Found ${settings.name}'),
          ),
        ));

    }

  }
}
