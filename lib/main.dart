import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/Services/NewsServices.dart';
import 'package:news_app/Views/HomePage.dart';

void main() {
  //NewsServices(Dio()).getNews();
  runApp(const NewsApp());
}

// final dio = Dio();
// final news = NewsServices(dio);

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
