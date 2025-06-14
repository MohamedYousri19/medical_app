import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medical_app/core/di/dependency_injection.dart';
import 'package:medical_app/core/routing/routes.dart';
import 'package:medical_app/features/login/ui/login_screen.dart';
import '../../features/home/ui/home_screen.dart';
import '../../features/login/logic/login_cubit.dart';
import '../../features/onboarding/ui/screens/on_boarding_screen.dart';
import '../../features/sign_up/screens/sign_up_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    // final arguments = settings.arguments ;

    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnBoardingScreen());

      case Routes.loginScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                create: (BuildContext context) => getIt.get<LoginCubit>(),
                child: const LoginScreen()));

      case Routes.signUpScreen:
        return MaterialPageRoute(builder: (_) => const SignUpScreen());

      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());

      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text('No Route Found ${settings.name}'),
                  ),
                ));
    }
  }
}
