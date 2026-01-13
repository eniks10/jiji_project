import 'package:flutter/material.dart';
import 'package:jiji_project/router/router.dart';
import 'package:jiji_project/screens/learning_screen.dart';
import 'package:jiji_project/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Jiji Project',
      theme: AppTheme.themeData,
      onGenerateRoute: (settings) => generateRoute(settings),
      initialRoute: LearningScreen.routeName,
    );
  }
}
