import 'package:flutter/material.dart';
import 'package:flutter_app_structure/core/resource/app_strings.dart';
import '../../presentation/bottom_nav/view/bottom_nav_bar_screen.dart';

class RoutesName {
  static const String splashRoute = "/";
  static const String onBoadingRoute = "/onBoading";
  static const String loginRoute = "/login";
  static const String registerRoute = "/register";
  static const String forgotPasswordRoute = "/forgotPassword";
  static const String storeDetailsRoute = "/storeDetails";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case RoutesName.splashRoute:
        return MaterialPageRoute(builder: (_) => const BottomNavBarScreen());
      //  case Routes.loginRoute:
      // return MaterialPageRoute(builder: (_)=>LoginScreen());

      default:
        return unDefineRoute();
    }
  }

  static Route<dynamic> unDefineRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(title: Text(AppString.noRoute)),
        body: Center(child: Text(AppString.noRoute)),
      ),
    );
  }
}
