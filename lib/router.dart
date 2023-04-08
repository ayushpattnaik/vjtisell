import 'package:flutter/material.dart';
import 'package:vjtisell/features/auth/screens/auth_screen_login.dart';
import 'package:vjtisell/features/auth/screens/auth_screen_signon.dart';
import 'package:vjtisell/features/home/screens/home_screen.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case AuthScreenLogin.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const AuthScreenLogin(),
      );
    case AuthScreenSignon.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const AuthScreenSignon(),
      );
    case HomeScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const HomeScreen (),
      );
    default:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const Scaffold(
          body: Center(
            child: Text('Screen does not exist!'),
          ),
        ),
      );
  }
}
