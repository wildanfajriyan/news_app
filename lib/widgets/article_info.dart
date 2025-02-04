import 'package:flutter/material.dart';
import 'package:news_app/model/news_data.dart';

class ArticleInfo extends StatelessWidget {
  const ArticleInfo({
    super.key,
    required this.news,
  });

  final NewsData news;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      margin: EdgeInsets.fromLTRB(10, 10, 10, 50),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(color: Colors.grey.shade200, width: 2.0))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Oleh ${news.author}',
            style: Theme.of(context).textTheme.labelMedium,
          ),
          Text(
            '${news.publishedDate} ${news.publishedTime} | ${news.category}',
            style: Theme.of(context).textTheme.labelMedium,
          )
        ],
      ),
    );
  }
}
