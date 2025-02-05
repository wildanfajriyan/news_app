import 'package:flutter/material.dart';
import 'package:news_app/provider/index_nav_provider.dart';
import 'package:provider/provider.dart';

class CustomButtomNavigationBar extends StatelessWidget {
  final BuildContext context;

  const CustomButtomNavigationBar({super.key, required this.context});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: context.watch<IndexNavProvider>().indexBottomNavBar,
        onTap: (index) {
          context.read<IndexNavProvider>().indexBottomNavBar = index;
        },
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.teal.shade700,
              ),
              label: 'Beranda',
              tooltip: 'Beranda'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle_sharp,
              ),
              label: 'Akun',
              tooltip: 'Akun'),
        ]);
  }
}
