import 'package:flutter/material.dart';
import 'package:recipe_app_ui/widgets/category_list.dart';
import 'package:recipe_app_ui/widgets/header.dart';
import 'package:recipe_app_ui/widgets/navbar.dart';
import 'package:recipe_app_ui/widgets/popular_list.dart';

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
            children: const [
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
