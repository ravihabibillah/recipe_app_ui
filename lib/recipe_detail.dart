import 'package:flutter/material.dart';
import 'package:recipe_app_ui/constant.dart';

class RecipeDetail extends StatefulWidget {
  const RecipeDetail({Key? key}) : super(key: key);

  @override
  _RecipeDetailState createState() => _RecipeDetailState();
}

class _RecipeDetailState extends State<RecipeDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.passthrough,
        overflow: Overflow.visible,
        alignment: Alignment.topCenter,
        children: [
          Image.asset("assets/images/nasi_bakar_tempe_MAHI-780x440.jpg"),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(top: 15.0, left: 20, right: 20),
              child: Row(
                children: [
                  IconCustom(
                    icon: Icon(Icons.arrow_back),
                    iconColor: Colors.black,
                  ),
                  Spacer(),
                  IconCustom(
                    icon: Icon(Icons.save_alt),
                    iconColor: Colors.black,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  IconCustom(
                    icon: Icon(Icons.favorite),
                    iconColor: Colors.red,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            width: 394,
            top: 190,
            child: Container(
              padding:
                  EdgeInsets.only(top: 25, left: 20, right: 20, bottom: 25),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Nasi Bakar Tempe",
                        style: kTitleTextStyle,
                      ),
                      Icon(Icons.bookmark_outline)
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage:
                            AssetImage("assets/images/profile.jpg"),
                        maxRadius: 20.0,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Kanna Hashimoto",
                            style: kTitleTextStyle.copyWith(fontSize: 14),
                          ),
                          Text(
                            "Member",
                            style: kSubTextStyle.copyWith(fontSize: 12),
                          ),
                        ],
                      ),
                      Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
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
                            ],
                          ),
                          SizedBox(height: 5),
                          Text(
                            "4.8 (100+)",
                            style: kSubTextStyle.copyWith(
                                fontSize: 12, color: Colors.black),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class IconCustom extends StatelessWidget {
  final Icon icon;
  final Color iconColor;

  const IconCustom({
    Key? key,
    required this.icon,
    required this.iconColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: IconButton(
        onPressed: () {},
        icon: icon,
        color: iconColor,
        highlightColor: Colors.amber,
      ),
    );
  }
}
