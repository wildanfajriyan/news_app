import 'package:flutter/material.dart';
import 'package:news_app/provider/index_nav_provider.dart';
import 'package:news_app/screen/account_screen.dart';
import 'package:news_app/screen/home_screen.dart';
import 'package:news_app/widgets/custom_button_navigation_bar.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<IndexNavProvider>(
        builder: (context, value, child) {
          return switch (value.indexBottomNavBar) {
            1 => AccountScreen(),
            _ => HomeScreen()
          };
        },
      ),
      bottomNavigationBar: CustomButtomNavigationBar(
        context: context,
      ),
    );
  }
}
