import 'package:flutter/material.dart';
import 'package:news_app/screen/home_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          appBarTheme: AppBarTheme(
            color: Colors.lightGreen,
            elevation: 0.0,
            titleTextStyle: TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
            actionsIconTheme: IconThemeData(color: Colors.white),
          ),
          colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.green, surface: Colors.white)),
      home: HomeScreen(),
    );
  }
}
