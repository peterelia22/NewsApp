import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/items/News.dart';
import 'package:newsapp/items/cards.dart';
import 'package:newsapp/widgets/NewsListView.dart';
import 'package:newsapp/widgets/cardslistview.dart';

import '../widgets/newslistviewbuilder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'News',
              style: TextStyle(color: Colors.black),
            ),
            Text(
              'Cloud',
              style: TextStyle(color: Colors.orange),
            ),
          ],
        ),
        elevation: 0,
      ),
      body: const Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(
                child: cardslistview(),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 32,
                ),
              ),
              newsListViewBuilder(
                category: 'general',
              ),
            ],
          )),
    );
  }
}
