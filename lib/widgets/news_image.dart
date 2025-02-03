import 'package:flutter/material.dart';
import 'package:news_app/model/news_data.dart';

class NewsImage extends StatelessWidget {
  const NewsImage({
    super.key,
    required this.news,
  });

  final NewsData news;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 200,
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover, image: NetworkImage(news.image))),
    );
  }
}
