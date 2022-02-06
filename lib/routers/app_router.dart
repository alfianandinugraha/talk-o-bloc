import 'dart:js';

import 'package:flutter/material.dart';
import 'package:talk_o_bloc/widgets/screens/home_screen.dart';
import 'package:talk_o_bloc/widgets/screens/total_screen.dart';

class AppRouter {
  Route<Widget>? onGenerateRoute(RouteSettings route) {
    print(route.name);
    switch (route.name) {
      case '/':
        return MaterialPageRoute(
          builder: (context) => const HomeScreen()
        );
      case '/total':
        return MaterialPageRoute(
          builder: (context) => const TotalScreen()
        );
      default:
        return null;
    }
  }
}
