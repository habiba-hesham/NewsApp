import 'package:flutter/material.dart';
import 'package:news_app/Models/Category.dart';
import 'package:news_app/Widgets/TileListViewBuilder.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({super.key, required this.categoryName});
  final String categoryName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            TileListViewBuilder(
              categoryName: categoryName,
            ),
          ],
        ),
      ),
    );
  }
}
