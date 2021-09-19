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
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context, true);
                      },
                      child: Icon(Icons.arrow_back),
                    ),
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
                  color: kBackgroundColor,
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
                  height: 25,
                ),
                Column(
                  children: [
                    SearchCard(
                      imageUrl:
                          "assets/images/resep-nasi-goreng-petai-spesial-780x440.jpg",
                      name: "Nasi Goreng Spesial",
                      rating: "4.8",
                      totalRating: "100+",
                      time: "20 menit",
                      bookmark: true,
                    ),
                    SearchCard(
                      imageUrl: "assets/images/Nasi Kuning.jpg",
                      name: "Nasi Kuning Spesial",
                      rating: "4.4",
                      totalRating: "120+",
                      time: "45 menit",
                      bookmark: false,
                    ),
                    SearchCard(
                      imageUrl: "assets/images/Nasi Jamblang.jpg",
                      name: "Nasi Jamblang",
                      rating: "4.6",
                      totalRating: "100+",
                      time: "35 menit",
                      bookmark: true,
                    ),
                    SearchCard(
                      imageUrl: "assets/images/sate-ayam.jpg",
                      name: "Sate Ayam Spesial",
                      rating: "4.5",
                      totalRating: "160+",
                      time: "40 menit",
                      bookmark: false,
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SearchCard extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String rating;
  final String totalRating;
  final String time;
  final bool bookmark;

  const SearchCard({
    Key? key,
    required this.imageUrl,
    required this.name,
    required this.rating,
    required this.totalRating,
    required this.time,
    required this.bookmark,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 12),
      width: double.infinity,
      child: Card(
        elevation: 6,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 150,
                width: 120,
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  child: Image.asset(
                    imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 15.0),
                height: 140,
                width: 150,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Text(
                        name,
                        style: kTitleTextStyle.copyWith(fontSize: 16),
                      ),
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
                          "$rating ($totalRating)",
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
                              fontSize: 12, fontWeight: FontWeight.w600),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  bookmark ? Icon(Icons.bookmark) : Icon(Icons.bookmark_outline)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
