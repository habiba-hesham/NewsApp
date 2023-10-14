import 'package:dio/dio.dart';
import 'package:news_app/Models/Article.dart';

class NewsServices {
  final Dio dio;
  NewsServices(this.dio);

  Future<List<Article>> getNews() async {
    var response = await dio.get(
      'https://newsapi.org/v2/top-headlines?country=us&apiKey=fd835d84e1c54a2580cc3942905c07fb',
    );

    Map<String, dynamic> jsonData = response.data;

    List<dynamic> articles = jsonData['articles'];

    List<Article> articlesList = [];

    for (var article in articles) {
      Article art = Article(
          image: article['urlToImage'],
          title: article['title'],
          subTitle: article['description']);

      articlesList.add(art);
    }
    return articlesList;
  }
}
