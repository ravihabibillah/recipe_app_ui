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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            myHeader(),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Kategori",
                    style: kTitleTextStyle.copyWith(fontSize: 16),
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
            )
          ],
        ),
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
