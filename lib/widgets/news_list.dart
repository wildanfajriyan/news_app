import 'package:flutter/material.dart';
import 'package:news_app/model/news_data.dart';
import 'package:news_app/widgets/news_card.dart';

class NewsList extends StatelessWidget {
  const NewsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final NewsData news = newList[index];
        return SingleChildScrollView(
          child: Container(
            color: Colors.grey.shade200,
            child: Column(
              children: [
                NewsCard(news: news),
              ],
            ),
          ),
        );
      },
      itemCount: newList.length,
    );
  }
}
