import 'package:flutter/material.dart';
import 'package:flutter_app_structure/core/route/route_config.dart';
import 'package:flutter_app_structure/core/route/route_name.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Riverpod MVVM Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      onGenerateRoute: AppRouter.generateRoute,
      initialRoute: RouteName.splashScreen,
    );
  }
}
