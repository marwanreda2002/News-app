import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsService {
  final Dio dio;

  NewsService(this.dio);

  Future <List<ArticleModel>>getTopHeadlines({required String category}) async {

    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=3777cabecf3f4533b64010f6349070b3&category=$category');
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData["articles"];

      List<ArticleModel> articlesList = [];

      for (var article in articles) {
        ArticleModel articleModel = ArticleModel(
            image: article["urlToImage"],
            title: article["title"],
            subTitle: article["description"]);
        articlesList.add(articleModel);
      }
      // print(articlesList);
      return articlesList;
    } catch (e) {
      return [];
    }
  }

}
