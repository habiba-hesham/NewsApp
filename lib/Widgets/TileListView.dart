import 'package:flutter/material.dart';
import 'package:news_app/Models/Article.dart';
import 'package:news_app/Widgets/NewsTile.dart';

class TileListView extends StatelessWidget {
  const TileListView({super.key, required this.articles});
  final List<Article> articles;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articles.length,
        (context, index) {
          return NewsTile(
            article: articles[index],
          );
        },
      ),
    );
  }
}
