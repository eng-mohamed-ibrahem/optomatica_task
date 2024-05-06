import 'package:flutter/material.dart';
import 'package:optomatica_task/view/pages/home.dart';

class AppRoutes {
  static const String home = '/';

  static Route generate(RouteSettings settings) {
    switch (settings.name) {
      case home:
        {
          return MaterialPageRoute(builder: (context) => const Home());
        }
      default:
        {
          return MaterialPageRoute(
            builder: (context) => const Scaffold(
              body: Center(
                child: Text('Page not found!'),
              ),
            ),
          );
        }
    }
  }
}
