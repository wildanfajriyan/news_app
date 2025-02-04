import 'package:flutter/material.dart';
import 'package:news_app/model/news_data.dart';
import 'package:news_app/widgets/bookmark_button.dart';

class NewsFooter extends StatelessWidget {
  const NewsFooter({
    super.key,
    required this.news,
  });

  final NewsData news;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Text(
              news.publishedTime,
              style: Theme.of(context).textTheme.labelMedium,
            ),
            SizedBox(
              width: 6,
            ),
            Text(
              news.category,
              style: Theme.of(context)
                  .textTheme
                  .labelMedium
                  ?.copyWith(color: Colors.teal.shade700),
            )
          ],
        ),
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.share,
                size: 18,
              ),
            ),
            BookmarkButton()
          ],
        )
      ],
    );
  }
}
