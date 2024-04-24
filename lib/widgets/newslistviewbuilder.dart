import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../models/article_model.dart';
import '../services/news_service.dart';
import 'NewsListView.dart';

class newsListViewBuilder extends StatefulWidget {
  const newsListViewBuilder({super.key, required this.category});
  final String category;
  @override
  State<newsListViewBuilder> createState() => _newsListViewBuilderState();
}

class _newsListViewBuilderState extends State<newsListViewBuilder> {
  var future;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    future = NewsServices(Dio()).getGeneralNews(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NewsListView(
              articles: snapshot.data!,
            );
          } else if (snapshot.hasError) {
            return const SliverToBoxAdapter(
              child: Center(child: Text('there was an error please try later')),
            );
          } else {
            return SliverToBoxAdapter(
                child: Center(
                    heightFactor: 20,
                    child: CircularProgressIndicator(
                      color: Colors.black54,
                    )));
          }
        });
    // return isLoading
    //     ? SliverToBoxAdapter(child: Center(child: CircularProgressIndicator()))
    //     : articles.isNotEmpty
    //         ? NewsListView(
    //             articles: articles,
    //           )
    //         : SliverToBoxAdapter(
    //             child:
    //                 Center(child: Text('there was an error please try later')),
    //           );
  }
}
