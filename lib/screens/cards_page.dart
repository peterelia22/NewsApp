import 'package:flutter/material.dart';
import 'package:newsapp/widgets/newslistviewbuilder.dart';

class CardPage extends StatelessWidget {
  final String category;

  CardPage({Key? key, required this.category}) : super(key: key);
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
      body: CustomScrollView(
        slivers: [
          newsListViewBuilder(
            category: category,
          )
        ],
      ),
    );
  }
}
