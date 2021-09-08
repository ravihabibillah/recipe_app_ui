import 'package:flutter/material.dart';
import 'package:recipe_app_ui/constant.dart';

import 'image_circle.dart';

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
              padding: const EdgeInsets.all(12.0),
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
