import 'package:flutter/material.dart';
import 'package:flutter_app_structure/core/route/route_name.dart';
import '../../presentation/user/view/user_list_screen.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.splashScreen:
        return MaterialPageRoute(builder: (_) => const UserListScreen());
      // case RouteName.signInScreen:
      //   return MaterialPageRoute(builder: (_) => const SignInScreen());
      default:
        return MaterialPageRoute(
          builder: (_) =>
              const Scaffold(body: Center(child: Text('Route not found'))),
        );
    }
  }
}
