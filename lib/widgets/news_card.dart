import 'package:flutter/material.dart';
import 'package:news_app/screen/detail_screen.dart';
import 'package:news_app/model/news_data.dart';
import 'package:news_app/static/navigation_route.dart';
import 'package:news_app/widgets/news_content.dart';
import 'package:news_app/widgets/news_image.dart';

class NewsCard extends StatelessWidget {
  final NewsData news;
  final Function() onTap;

  const NewsCard({super.key, required this.news, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: InkWell(
        child: Container(
          color: Colors.white,
          margin: EdgeInsets.only(bottom: 10),
          child: Column(
            children: [NewsImage(news: news), NewsContent(news: news)],
          ),
        ),
      ),
    );
  }
}
