import 'package:flutter/material.dart';
import 'package:news_app/Models/Category.dart';
import 'package:news_app/Widgets/CategoryView.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({
    super.key,
    required this.categories,
  });

  final List<Category> categories;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 135,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return CategoryView(
            category: categories[index],
          );
        },
      ),
    );
  }
}
