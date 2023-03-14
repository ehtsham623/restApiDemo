import 'package:flutter/material.dart';
import 'package:rest_api_demo/constants/route_paths.dart';
import 'package:rest_api_demo/screens/home/home.dart';
import 'package:rest_api_demo/screens/splash/onboarding.dart';
import 'package:rest_api_demo/screens/splash/splash.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case '/':
      return MaterialPageRoute<dynamic>(
          settings: const RouteSettings(name: RoutePaths.onboarding),
          builder: (BuildContext context) {
            return const OnBoarding();
          });
    case RoutePaths.splash:
      return MaterialPageRoute<dynamic>(
          settings: const RouteSettings(name: RoutePaths.splash),
          builder: (BuildContext context) {
            return const Splash();
          });
    case RoutePaths.onboarding:
      return MaterialPageRoute<dynamic>(
          settings: const RouteSettings(name: RoutePaths.onboarding),
          builder: (BuildContext context) {
            return const OnBoarding();
          });
    case RoutePaths.home:
      return MaterialPageRoute<dynamic>(
          settings: const RouteSettings(name: RoutePaths.home),
          builder: (BuildContext context) {
            return const Home();
          });

    default:
      return PageRouteBuilder<dynamic>(
          pageBuilder: (_, Animation<double> a1, Animation<double> a2) => const Splash());
  }
}
