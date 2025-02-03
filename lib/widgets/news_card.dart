import 'package:flutter/material.dart';
import 'package:news_app/screen/detail_screen.dart';
import 'package:news_app/model/news_data.dart';
import 'package:news_app/widgets/news_content.dart';
import 'package:news_app/widgets/news_image.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({
    super.key,
    required this.news,
  });

  final NewsData news;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return DetailScreen(
            news: news,
          );
        }));
      },
      child: Container(
        color: Colors.white,
        margin: EdgeInsets.only(bottom: 10),
        child: Column(
          children: [NewsImage(news: news), NewsContent(news: news)],
        ),
      ),
    );
  }
}
