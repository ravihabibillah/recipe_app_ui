import 'package:flutter/material.dart';
import 'package:recipe_app_ui/constant.dart';
import 'package:recipe_app_ui/widgets/bookmark_button.dart';

import 'image_circle.dart';

class RecipeCard extends StatelessWidget {
  final String image;
  final String name;
  final double rating;
  final String total;
  final String time;
  final String publisherAvatar;
  final List<String> process;

  const RecipeCard(
      {Key? key,
      required this.image,
      required this.name,
      required this.rating,
      required this.total,
      required this.time,
      required this.publisherAvatar,
      required this.process})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 5, top: 10),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        elevation: 6,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 150,
              width: double.infinity,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
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
                          const Icon(
                            Icons.alarm,
                            size: 15,
                          ),
                          const SizedBox(width: 3),
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
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      BookmarkButton(),
                      ImageCircle(
                          image_width: 30,
                          image_height: 30,
                          imageUrl: publisherAvatar)
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
