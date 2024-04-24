import 'package:flutter/material.dart';
import 'package:newsapp/models/article_model.dart';
import 'package:newsapp/widgets/webview_screen.dart';

class News extends StatelessWidget {
  final ArticleModel articleModel;

  News({Key? key, required this.articleModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => WebViewScreen(url: articleModel.url!),
          ),
        );
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: articleModel.image != null
                ? Image.network(
                    articleModel.image!,
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.fill,
                  )
                : Image.asset(
                    'assets/images/general.png',
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.fill,
                  ),
          ),
          const SizedBox(height: 22),
          Text(
            articleModel.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 25,
              color: Colors.black87,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            articleModel.subtitle ?? ' ',
            maxLines: 2,
            style: TextStyle(color: Colors.grey, fontSize: 14),
          )
        ],
      ),
    );
  }
}
