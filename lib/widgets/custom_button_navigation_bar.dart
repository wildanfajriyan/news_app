import 'package:flutter/material.dart';

class CustomButtomNavigationBar extends StatelessWidget {
  const CustomButtomNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(unselectedItemColor: Colors.grey, items: [
      BottomNavigationBarItem(
        icon: Icon(
          Icons.home,
          color: Colors.teal.shade700,
        ),
        label: 'Beranda',
      ),
      BottomNavigationBarItem(
        icon: Icon(
          Icons.account_circle_sharp,
        ),
        label: 'Akun',
      ),
    ]);
  }
}
