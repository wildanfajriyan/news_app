import 'package:flutter/material.dart';
import 'package:news_app/model/news_data.dart';

class ArticleContent extends StatelessWidget {
  const ArticleContent({
    super.key,
    required this.news,
  });

  final NewsData news;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Text(news.content));
  }
}
