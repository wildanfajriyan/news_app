import 'package:flutter/material.dart';
import 'package:news_app/model/news_data.dart';
import 'package:news_app/widgets/news_footer.dart';

class NewsContent extends StatelessWidget {
  const NewsContent({
    super.key,
    required this.news,
  });

  final NewsData news;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: Column(
        children: [
          Text(
            news.title,
            style: Theme.of(context)
                .textTheme
                .headlineMedium
                ?.copyWith(fontWeight: FontWeight.w600),
            textAlign: TextAlign.left,
          ),
          SizedBox(height: 12),
          Text(
            news.summary,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.left,
          ),
          SizedBox(height: 12),
          NewsFooter(news: news)
        ],
      ),
    );
  }
}
