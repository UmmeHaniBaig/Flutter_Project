import 'package:project_nastp/routes/app_routes.dart';
import 'package:flutter/material.dart';
import '../login_screen.dart';
import '../signup_screen.dart';
import '../home_screen.dart';
import '../UserProfile_card.dart';


class RouteManagement {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.login:
        return MaterialPageRoute(builder: (_) => const LoginScreen());

      case AppRoutes.signup:
        return MaterialPageRoute(builder: (_) => const SignupScreen());

      case AppRoutes.home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());

      case AppRoutes.profile:
        return MaterialPageRoute(builder: (_) => const UserProfileCard());

      

      default:
        return MaterialPageRoute(
          builder: (_) =>
              const Scaffold(body: Center(child: Text("Page not found"))),
        );
    }
  }
}
