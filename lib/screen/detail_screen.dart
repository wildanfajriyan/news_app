import 'package:flutter/material.dart';
import 'package:news_app/model/news_data.dart';
import 'package:news_app/widgets/article_content.dart';
import 'package:news_app/widgets/article_info.dart';
import 'package:news_app/widgets/news_image_header.dart';

class DetailScreen extends StatelessWidget {
  final NewsData news;

  const DetailScreen({super.key, required this.news});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal.shade700,
        foregroundColor: Colors.white,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.share,
                size: 18,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            NewsImageHeader(news: news),
            ArticleInfo(news: news),
            ArticleContent(news: news)
          ],
        ),
      ),
    );
  }
}
