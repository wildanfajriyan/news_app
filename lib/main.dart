import 'package:flutter/material.dart';
import 'package:news_app/model/news_data.dart';
import 'package:news_app/provider/index_nav_provider.dart';
import 'package:news_app/screen/detail_screen.dart';
import 'package:news_app/screen/home_screen.dart';
import 'package:news_app/static/navigation_route.dart';
import 'package:news_app/style/theme/news_theme.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => IndexNavProvider(), child: const MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: NewsTheme.lightTheme,
      darkTheme: NewsTheme.darkTheme,
      themeMode: ThemeMode.system,
      initialRoute: NavigationRoute.homeRoute.name,
      routes: {
        NavigationRoute.homeRoute.name: (context) => HomeScreen(),
        NavigationRoute.detailRoute.name: (context) => DetailScreen(
            news: ModalRoute.of(context)?.settings.arguments as NewsData)
      },
    );
  }
}
