import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recipe_app_ui/constant.dart';
import 'package:recipe_app_ui/recipe_detail.dart';
import 'package:recipe_app_ui/search_list.dart';
import 'package:recipe_app_ui/widgets/category_list.dart';
import 'package:recipe_app_ui/widgets/header.dart';
import 'package:recipe_app_ui/widgets/navbar.dart';
import 'package:recipe_app_ui/widgets/popular_list.dart';
import 'package:recipe_app_ui/widgets/recipe_card.dart';
import './widgets/image_circle.dart';
import './widgets/category_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Recipe App',
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        fontFamily: "Poppins",
        primarySwatch: Colors.blue,
        textTheme: const TextTheme(body1: TextStyle(color: kBodyTextColor)),
      ),
      home: RecipeDetail(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              myHeader(),
              CategoryList(),
              ListPopular(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Navbar(),
    );
  }

  // void onTabTapped(int index) {
  //   setState(() {
  //     _currentIndex = index;
  //   });
  // }
}
