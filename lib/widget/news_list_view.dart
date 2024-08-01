import 'dart:html';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/widget/news_tile.dart';

class NewsListView extends StatelessWidget {
  List<ArticleModel> articles;

  NewsListView({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    NewsService(Dio()).getTopHeadlines(category: 'general');

    return SliverList(
        delegate: SliverChildBuilderDelegate(
            childCount: articles.length,
                (context, index) {
          return Padding(
            padding: EdgeInsets.only(bottom: 22),
            child: NewsTile(
              articleModel: articles[index],
            ),
          );
        }
        )
    );
  }
}

