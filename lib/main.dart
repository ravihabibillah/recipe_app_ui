import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recipe_app_ui/constant.dart';
import 'package:recipe_app_ui/widgets/category_list.dart';
import 'package:recipe_app_ui/widgets/header.dart';
import 'package:recipe_app_ui/widgets/navbar.dart';
import 'package:recipe_app_ui/widgets/recipe_card.dart';
import './widgets/image_circle.dart';
import './widgets/category_card.dart';

var _currentIndex;
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
      home: const HomePage(),
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

class ListPopular extends StatelessWidget {
  const ListPopular({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Resep Populer",
            style: kTitleTextStyle.copyWith(fontSize: 18),
          ),
          RecipeCard(
            image:
                "assets/images/5-resep-bumbu-rendang-daging-sapi-yang-enak-dan-lezat-mudah-dibuat.jpg",
            name: "Rendang Sapi",
            rating: "4.8",
            total: "120+",
            time: "5 Jam",
          ),
          RecipeCard(
            image: "assets/images/sate-ayam.jpg",
            name: "Sate Ayam",
            rating: "4.8",
            total: "120+",
            time: "5 Jam",
          ),
          RecipeCard(
            image: "assets/images/nasi_bakar_tempe_MAHI-780x440.jpg",
            name: "Nasi Bakar Tempa",
            rating: "4.8",
            total: "120+",
            time: "5 Jam",
          )
        ],
      ),
    );
  }
}
