import 'package:flutter/material.dart';
import 'package:flutter_app_structure/core/resource/app_strings.dart';
import '../../presentation/user/view/user_list_screen.dart';
class Routes{
  static const String splashRoute="/";
  static const String onBoadingRoute="/onBoading";
  static const String loginRoute="/login";
  static const String registerRoute="/register";
  static const String forgotPasswordRoute="/forgotPassword";
  static const String mainRoute="/main";
  static const String storeDetailsRoute="/storeDetails";

}
class RouteGenerator{
  static Route<dynamic>getRoute(RouteSettings routeSettings){
    switch (routeSettings.name) {
      case Routes.splashRoute:
      return MaterialPageRoute(builder: (_)=>const UserListScreen());
      //  case Routes.loginRoute:
      // return MaterialPageRoute(builder: (_)=>LoginScreen());
      
      default:
      return unDefineRoute();
    }

  }
  static Route<dynamic>unDefineRoute(){
    return MaterialPageRoute(builder: (_)=>Scaffold(
      appBar: AppBar(title: Text(AppString.noRoute),),
      body: Center(child: Text(AppString.noRoute),),
    ));
  }
}