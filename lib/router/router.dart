import 'package:flutter/material.dart';
import 'package:jiji_project/screens/learning_screen.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case LearningScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (context) => LearningScreen(),
      );

    default:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const Center(child: Text('Default Screen')),
      );
  }
}
