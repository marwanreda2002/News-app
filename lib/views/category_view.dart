import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/widget/News_List_View_Builder.dart';
import 'package:news_app/widget/news_list_view.dart';

import '../modules/profile_screen.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.category});
  final String category;
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
            Text("Cloude",
              style: TextStyle(
                  color: Colors.orange
              ),
            ),
          ],

        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CustomScrollView(
          slivers: [
            NewsListViewBuilder(
              category: category ,
            ),
          ],
        ),
      ),
    );
  }
}
