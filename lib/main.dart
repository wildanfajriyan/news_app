import 'package:flutter/material.dart';
import 'package:news_app/model/news_data.dart';
import 'package:news_app/screen/detail_screen.dart';
import 'package:news_app/screen/home_screen.dart';
import 'package:news_app/static/navigation_route.dart';

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
      initialRoute: NavigationRoute.homeRoute.name,
      routes: {
        NavigationRoute.homeRoute.name: (context) => HomeScreen(),
        NavigationRoute.detailRoute.name: (context) => DetailScreen(
            news: ModalRoute.of(context)?.settings.arguments as NewsData)
      },
    );
  }
}
