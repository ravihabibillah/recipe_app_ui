import 'package:flutter/material.dart';
import 'package:recipe_app_ui/constant.dart';
import 'package:recipe_app_ui/widgets/image_circle.dart';

class SearchList extends StatefulWidget {
  const SearchList({Key? key}) : super(key: key);

  @override
  _SearchListState createState() => _SearchListState();
}

class _SearchListState extends State<SearchList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                children: [
                  Icon(Icons.arrow_back),
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    "Nasi",
                    style: kHeadingTextStyle.copyWith(fontSize: 18),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Material(
                shadowColor: kShadowColor,
                elevation: 1,
                borderRadius: BorderRadius.all(Radius.circular(20)),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: "Temukan Resep Yang Kamu Inginkan",
                    hintStyle: TextStyle(fontSize: 14),
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Container(
                    width: double.infinity,
                    child: Card(
                      elevation: 6,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 150,
                            width: 120,
                            child: ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              child: Image.asset(
                                "assets/images/resep-nasi-goreng-petai-spesial-780x440.jpg",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            padding:
                                const EdgeInsets.only(top: 10.0, left: 15.0),
                            height: 130,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Nasi Goreng\nSpesial",
                                  style: kTitleTextStyle.copyWith(fontSize: 16),
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
                                      "4.8 (100+)",
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
                                      "20 Menit",
                                      style: kSubTextStyle.copyWith(
                                          fontSize: 12, color: Colors.black),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    ImageCircle(
                                        image_width: 20,
                                        image_height: 20,
                                        imageUrl: "assets/images/profile.jpg"),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "Kanna Hashimoto",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(Icons.bookmark),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
