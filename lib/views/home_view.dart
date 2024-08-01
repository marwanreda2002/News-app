import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/modules/login_screen.dart';
import 'package:news_app/modules/profile_screen.dart';
import 'package:news_app/widget/categories_list_view.dart';
import 'package:news_app/widget/category_card.dart';
import 'package:news_app/widget/news_list_view.dart';
import 'package:news_app/widget/news_tile.dart';

import '../models/article_model.dart';
import '../services/news_service.dart';
import '../widget/News_List_View_Builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {
          Navigator.push(context,
            MaterialPageRoute(builder: (context) =>ProfileScreen()),
          );

            }, icon: Icon(CupertinoIcons.profile_circled),color: Colors.grey[900])
        ],
        automaticallyImplyLeading: false,
        // leading: IconButton(
        //   color: Colors.black,
        //   onPressed: () {
        //     Navigator.pop(context,
        //       MaterialPageRoute(builder: (context) =>LoginScreen()),);
        //   },
        //   icon: Icon(Icons.arrow_back),
        // ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("News",
              style: TextStyle(
                  color: Colors.black
              ),
            ),
            Text("Cloud",
              style: TextStyle(
                  color: Colors.orange
              ),
            ),
          ],

        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),

        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(child:CategoriesListView()),
            SliverToBoxAdapter(child: SizedBox(height: 25,),),
            NewsListViewBuilder(category: "general"),
          ],
        ),

      )
    );
  }
}


