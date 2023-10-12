import 'package:flutter/material.dart';
import 'package:news_app/Models/Category.dart';
import 'package:news_app/Widgets/CategoryListView.dart';
//import 'package:news_app/Widgets/CategoryView.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  final List<Category> categories = const [
    Category(image: 'assets/business2.jpg', text: 'Business'),
    Category(image: 'assets/business2.jpg', text: 'Business'),
    Category(image: 'assets/business2.jpg', text: 'Business'),
    Category(image: 'assets/business2.jpg', text: 'Business'),
    Category(image: 'assets/business2.jpg', text: 'Business'),
    Category(image: 'assets/business2.jpg', text: 'Business'),
    Category(image: 'assets/business2.jpg', text: 'Business'),
    Category(image: 'assets/business2.jpg', text: 'Business'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "News",
              style: TextStyle(color: Colors.black, fontSize: 25),
            ),
            Text(
              "Cloud",
              style: TextStyle(color: Colors.orange, fontSize: 25),
            ),
          ],
        ),
      ),
      body: CategoryListView(categories: categories),
    );
  }
}
