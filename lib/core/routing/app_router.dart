import 'package:flutter/material.dart';

import '../../features/login/presentation/screens/login_screen.dart';
import '../../features/onboarding/screens/onboarding_screen.dart';

part 'routes.dart';

class AppRouter {
  static Route generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;
    switch (settings.name) {
      case Routes.onboardingScreen:
        return MaterialPageRoute(builder: (context) => const OnboardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (context) => const LoginScreen());
      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(body: Center(child: Text('No route defined for ${settings.name}'))),
        );
    }
  }
}
