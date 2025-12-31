import 'package:allora_mikejallah_mobile_app/app/splash_view.dart';
import 'package:allora_mikejallah_mobile_app/src/core/routing/route_names.dart';
import 'package:allora_mikejallah_mobile_app/src/core/themes/themes.dart';
import 'package:allora_mikejallah_mobile_app/src/module/auth/ui/view/login_view.dart';
import 'package:flutter/material.dart';

final navigatorKey = GlobalKey<NavigatorState>();
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Allora',
      navigatorKey: navigatorKey,
      theme: AppTheme().lightTheme,
      darkTheme: AppTheme().darkTheme,
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case RouteNames.splash:
            return MaterialPageRoute(builder: (_) => const SplashView() );
          case RouteNames.login:
            return MaterialPageRoute(builder: (_) => LoginView());
          default:
            return null;
        }
      },
      home: const SplashView(),
    );
  }
}



