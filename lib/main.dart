import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/modules/login_screen.dart';
import 'package:news_app/modules/profile_screen.dart';
import 'package:news_app/modules/register_screen.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/views/home_view.dart';

void main() {
  runApp(const MyApp());
}

final dio = Dio();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
