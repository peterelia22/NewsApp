import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/screens/home_page.dart';

import 'package:newsapp/services/news_service.dart';

void main() {
  runApp(NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
