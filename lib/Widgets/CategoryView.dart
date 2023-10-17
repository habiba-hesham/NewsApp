import 'package:flutter/material.dart';
import 'package:news_app/Models/Category.dart';
import 'package:news_app/Views/NewsPage.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.category});
  final Category category;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return NewsPage(
            categoryName: category.text,
          );
        }));
      },
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        height: 130,
        width: 250,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image: DecorationImage(
            image: AssetImage(category.image),
            fit: BoxFit.fill,
          ),
        ),
        child: Center(
          child: Text(
            category.text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
