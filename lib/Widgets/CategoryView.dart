import 'package:flutter/material.dart';
import 'package:news_app/Models/Category.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.category});
  final Category category;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      height: 145,
      width: 210,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: DecorationImage(
            image: AssetImage(category.image), opacity: 1, fit: BoxFit.fill),
      ),
      child: Center(
        child: Text(
          category.text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
