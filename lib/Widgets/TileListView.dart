import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/Models/Article.dart';
import 'package:news_app/Services/NewsServices.dart';
import 'package:news_app/Widgets/NewsTile.dart';

class TileListView extends StatefulWidget {
  const TileListView({super.key});

  @override
  State<TileListView> createState() => _TileListViewState();
}

class _TileListViewState extends State<TileListView> {
  List<Article> articles = [];
  bool isloading = true;
  @override
  void initState() {
    super.initState();
    GetNews();
  }

  Future<void> GetNews() async {
    articles = await NewsServices(Dio()).getNews();
    isloading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return isloading
        ? const SliverToBoxAdapter(
            child: Center(child: CircularProgressIndicator()))
        : SliverList(
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
