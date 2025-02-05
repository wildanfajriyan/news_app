import 'package:flutter/material.dart';
import 'package:news_app/widgets/custom_app_bar.dart';
import 'package:news_app/widgets/custom_button_navigation_bar.dart';
import 'package:news_app/widgets/news_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        appBar: CustomAppBar(),
        body: TabBarView(children: [
          NewsList(),
          NewsList(),
        ]),
      ),
    );
  }
}
