import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/models/article_model.dart';

class NewsServices {
  final Dio dio;
  NewsServices(this.dio);
  Future<List<ArticleModel>> getGeneralNews({required String category}) async {
    try {
      var response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=49ff1e7e09c143a1bf81efe21a6d587d&category=$category');
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];
      List<ArticleModel> ArticlesList = [];
      for (var article in articles) {
        ArticleModel articleModel = ArticleModel(
          url: article['url'] ?? 'No URL',
          image: article['urlToImage'],
          title: article['title'] ?? 'No Title',
          subtitle: article['description'] ?? 'No Description',
        );
        ArticlesList.add(articleModel);
      }
      return ArticlesList;
    } catch (e) {
      print('Error fetching news: $e');
      return [];
    }
  }
}
