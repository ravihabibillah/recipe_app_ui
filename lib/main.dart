import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recipe_app_ui/constant.dart';
import './widgets/image_circle.dart';

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

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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

              Container(
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RecipeCard extends StatelessWidget {
  final String image;
  final String name;
  final String rating;
  final String total;
  final String time;
  const RecipeCard({
    Key? key,
    required this.image,
    required this.name,
    required this.rating,
    required this.total,
    required this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 5, top: 10),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        elevation: 6,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 125,
              width: double.infinity,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: kTitleTextStyle.copyWith(fontSize: 14),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: starActive,
                            size: 15,
                          ),
                          Icon(
                            Icons.star,
                            color: starActive,
                            size: 15,
                          ),
                          Icon(
                            Icons.star,
                            color: starActive,
                            size: 15,
                          ),
                          Icon(
                            Icons.star,
                            color: starActive,
                            size: 15,
                          ),
                          Icon(
                            Icons.star,
                            color: starActive,
                            size: 15,
                          ),
                          SizedBox(width: 5),
                          Text(
                            "$rating ($total)",
                            style: kSubTextStyle.copyWith(
                                fontSize: 12, color: Colors.black),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.alarm,
                            size: 15,
                          ),
                          SizedBox(width: 3),
                          Text(
                            time,
                            style: kSubTextStyle.copyWith(
                                fontSize: 12, color: Colors.black),
                          ),
                        ],
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.bookmark_outline),
                      SizedBox(height: 4),
                      ImageCircle(
                          image_width: 30,
                          image_height: 30,
                          imageUrl: "assets/images/profile.jpg")
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CategoryList extends StatelessWidget {
  const CategoryList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Kategori",
            style: kTitleTextStyle.copyWith(fontSize: 18),
          ),
          Wrap(
            alignment: WrapAlignment.start,
            direction: Axis.horizontal,
            spacing: 15,
            children: const [
              CategoryCard(
                image: "assets/icons/meat.svg",
                text: "Daging",
              ),
              CategoryCard(
                image: "assets/icons/fruits.svg",
                text: "Buah",
              ),
              CategoryCard(
                image: "assets/icons/fish.svg",
                text: "Ikan",
              ),
              CategoryCard(
                image: "assets/icons/rice.svg",
                text: "Beras",
              ),
              CategoryCard(
                image: "assets/icons/milk.svg",
                text: "Susu",
              ),
              CategoryCard(
                image: "assets/icons/cake.svg",
                text: "Kue",
              ),
            ],
          )
        ],
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String image;
  final String text;
  const CategoryCard({
    Key? key,
    required this.image,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 75,
      height: 75,
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(.7),
              blurRadius: 5,
              offset: Offset(0, 3))
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            image,
            // width: double.infinity,
            width: 30,
          ),
          SizedBox(height: 8),
          Text(
            text,
            style: kSubTextStyle.copyWith(fontSize: 10, color: Colors.black),
          )
        ],
      ),
    );
  }
}

class myHeader extends StatelessWidget {
  const myHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        children: [
          Row(
            children: [
              ImageCircle(
                imageUrl: "assets/images/profile.jpg",
                image_height: 40,
                image_width: 40,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Hai, Rafi Aulia",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              Icon(
                Icons.arrow_right,
                size: 30,
              )
            ],
          ),
          Spacer(),
          Icon(Icons.search),
          SizedBox(width: 10),
          Icon(Icons.light_mode)
        ],
      ),
    );
  }
}
