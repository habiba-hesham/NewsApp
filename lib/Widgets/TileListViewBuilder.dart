import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/Models/Article.dart';
import 'package:news_app/Models/Category.dart';
import 'package:news_app/Services/NewsServices.dart';
import 'package:news_app/Widgets/TileListView.dart';

class TileListViewBuilder extends StatefulWidget {
  const TileListViewBuilder({super.key, required this.categoryName});
  final String categoryName;

  @override
  State<TileListViewBuilder> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<TileListViewBuilder> {
  var article;
  // bool isLoading = true;
  @override
  void initState() {
    super.initState();
    article = NewsServices(Dio()).getNews(category: widget.categoryName);
  }

//   Future<void> GetNews() async {
//     articles = await NewsServices(Dio()).getNews();
//     isLoading = false;
//     setState(() {});
//   }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Article>>(
      future: article,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return TileListView(
            articles: snapshot.data ?? [],
          );
        } else if (snapshot.hasError) {
          return const SliverToBoxAdapter(
              child: Center(
                  child: Text("OOPS there was an error, try again later")));
        } else {
          return const SliverToBoxAdapter(
              child: Center(child: CircularProgressIndicator()));
        }
      },
    );
    // return isLoading
    //     ? const SliverToBoxAdapter(
    //         child: Center(child: CircularProgressIndicator()))
    //     : articles.isNotEmpty
    //         ? TileListView(articles: articles)
    //         : const SliverToBoxAdapter(
    //             child: Center(
    //                 child: Text("OOPS there was an error, try again later")));
  }
}
