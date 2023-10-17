import 'package:flutter/material.dart';
import 'package:news_app/Models/Category.dart';
import 'package:news_app/Widgets/CategoryView.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({
    super.key,
  });

  final List<Category> categories = const [
    Category(image: 'assets/business2.jpg', text: 'Business'),
    Category(image: 'assets/Health.jpg', text: 'Health'),
    Category(image: 'assets/Entertainment.jpg', text: 'Entertainment'),
    Category(image: 'assets/General.jpg', text: 'General'),
    Category(image: 'assets/Science.jpg', text: 'Science'),
    Category(image: 'assets/Sports.jpg', text: 'Sports'),
    Category(image: 'assets/Technology.jpg', text: 'Technology'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
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
