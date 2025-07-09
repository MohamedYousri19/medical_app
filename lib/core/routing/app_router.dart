import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medical_app/core/di/dependency_injection.dart';
import 'package:medical_app/core/routing/routes.dart';
import 'package:medical_app/features/home/logic/home_cubit.dart';
import 'package:medical_app/features/login/ui/login_screen.dart';
import 'package:medical_app/features/search/logic/search_cubit.dart';
import 'package:medical_app/features/search/ui/search_screen.dart';
import '../../features/home/ui/home_screen.dart';
import '../../features/layout/logic/layout_cubit.dart';
import '../../features/layout/ui/layout_screen.dart';
import '../../features/login/logic/login_cubit.dart';
import '../../features/onboarding/ui/screens/on_boarding_screen.dart';
import '../../features/sign_up/logic/sign_up_cubit.dart';
import '../../features/sign_up/ui/sign_up_screen.dart';

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

      case Routes.layoutScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                create: (BuildContext context) => getIt.get<LayoutCubit>(),
                child: const LayoutScreen()));

      case Routes.signUpScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                create: (BuildContext context) => getIt.get<SignupCubit>(),
                child: const SignupScreen()));

      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) =>BlocProvider(
            create: (BuildContext context) => getIt.get<HomeCubit>()..getSpecializations(),
            child: const HomeScreen()));

      case Routes.searchScreen:
        return MaterialPageRoute(builder: (_) =>BlocProvider(
            create: (BuildContext context) => getIt.get<SearchCubit>()..getAllDoctors(),
            child: const SearchScreen()));

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
