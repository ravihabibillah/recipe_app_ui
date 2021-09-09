import 'package:flutter/material.dart';
import 'package:recipe_app_ui/constant.dart';
import 'package:recipe_app_ui/widgets/recipe_card.dart';

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
