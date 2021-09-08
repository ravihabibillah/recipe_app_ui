import 'package:flutter/material.dart';
import 'package:recipe_app_ui/constant.dart';
import 'package:recipe_app_ui/widgets/category_card.dart';

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
