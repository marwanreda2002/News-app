import 'package:flutter/cupertino.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widget/category_card.dart';

class CategoriesListView extends StatelessWidget {
  const  CategoriesListView({super.key});


  final List <CategoryModel> categories = const  [
    CategoryModel(image: 'images/business.jpg',categoryName: 'Business'),
    CategoryModel(image: 'images/entertaiment.jpg',categoryName: 'Entertainment'),
    CategoryModel(image: 'images/general.jpg',categoryName: 'General'),
    CategoryModel(image: 'images/health.jpg',categoryName: 'Health'),
    CategoryModel(image: 'images/science.jpg',categoryName: 'Science'),
    CategoryModel(image: 'images/sports.jpg',categoryName: 'Sports'),
    CategoryModel(image: 'images/technology.jpeg',categoryName: 'Technology'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index)
          {
            return CategoryCard(category: categories[index]);
          }
      ),
    );
  }
}
