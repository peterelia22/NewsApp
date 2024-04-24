import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/items/News.dart';
import 'package:newsapp/models/article_model.dart';
import 'package:newsapp/services/news_service.dart';

class NewsListView extends StatelessWidget {
  @override
  final List<ArticleModel> articles;

  NewsListView({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(childCount: articles.length,
            (context, index) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 22),
        child: News(
          articleModel: articles[index],
        ),
      );
    }));
  }
}
