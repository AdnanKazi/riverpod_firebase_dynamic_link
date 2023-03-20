import 'package:flutter/material.dart';

import 'deep_link_news.dart';
import 'deep_link_news_item.dart';

class NewsListPage extends StatelessWidget {
  const NewsListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.separated(
          itemBuilder: (context, index) {
            return NewsItem(news: mockNews[index]);
          },
          separatorBuilder: (_, __) {
            return const SizedBox(height: 8);
          },
          itemCount: mockNews.length,
        ),
      ),
    );
  }
}
