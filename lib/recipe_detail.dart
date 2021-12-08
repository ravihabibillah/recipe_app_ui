import 'package:flutter/material.dart';
import 'package:recipe_app_ui/constant.dart';
import 'package:recipe_app_ui/model/food_recipe.dart';
import 'package:recipe_app_ui/widgets/bookmark_button.dart';

class RecipeDetail extends StatelessWidget {
  final FoodRecipe recipe;
  RecipeDetail({Key? key, required this.recipe}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth <= 800) {
        return DetailMobilePage(recipe: recipe);
      } else {
        return DetailWebPage(
          recipe: recipe,
          height: constraints.maxHeight / 2,
        );
      }
    });
  }
}

class DetailWebPage extends StatelessWidget {
  final FoodRecipe recipe;
  final double height;
  const DetailWebPage({Key? key, required this.recipe, required this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        fit: StackFit.passthrough,
        alignment: Alignment.topCenter,
        children: [
          // Container(
          //   height: height,
          //   width: double.infinity,
          //   child: Image.asset(
          //     recipe.imageAsset,
          //     fit: BoxFit.cover,
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Image.asset(
                recipe.imageAsset,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(children: [
              Container(
                margin: EdgeInsets.only(top: height),
                padding:
                    EdgeInsets.only(top: 25, left: 20, right: 20, bottom: 25),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          recipe.name,
                          style: kTitleTextStyle,
                        ),
                        BookmarkButton()
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(recipe.publisherAvatar),
                          maxRadius: 20.0,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              recipe.publisher,
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
                            const SizedBox(height: 5),
                            Text(
                              "${recipe.rating} ${recipe.totalRate}",
                              style: kSubTextStyle.copyWith(
                                  fontSize: 12, color: Colors.black),
                            )
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 14.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Icon(Icons.timer),
                          const SizedBox(
                            width: 4.0,
                          ),
                          Text(
                            recipe.time,
                            style: const TextStyle(fontSize: 13),
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          Icon(Icons.local_fire_department),
                          const SizedBox(
                            width: 4.0,
                          ),
                          Text(
                            recipe.calorie,
                            style: TextStyle(fontSize: 13),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 14.0),
                      child: Text(
                        "Untuk ${recipe.portion} Porsi",
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 18.0),
                      child: Text(
                        "Proses",
                        style: kTitleTextStyle.copyWith(fontSize: 16.0),
                      ),
                    ),
                    Column(
                      children: [
                        ListView.builder(
                          primary: false,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return ProcessListItem(
                                index: index + 1,
                                process: recipe.process[index]);
                          },
                          itemCount: recipe.process.length,
                        ),
                      ],
                    )
                  ],
                ),
              )
            ]),
          ),
          TopButton(),
        ],
      ),
    );
  }
}

class DetailMobilePage extends StatelessWidget {
  final FoodRecipe recipe;

  const DetailMobilePage({Key? key, required this.recipe}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        fit: StackFit.passthrough,
        alignment: Alignment.topCenter,
        children: [
          Image.asset(recipe.imageAsset),
          SingleChildScrollView(
            child: Column(children: [
              Container(
                margin: EdgeInsets.only(top: 170),
                padding:
                    EdgeInsets.only(top: 25, left: 20, right: 20, bottom: 25),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          recipe.name,
                          style: kTitleTextStyle,
                        ),
                        BookmarkButton()
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(recipe.publisherAvatar),
                          maxRadius: 20.0,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              recipe.publisher,
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
                            const SizedBox(height: 5),
                            Text(
                              "${recipe.rating} ${recipe.totalRate}",
                              style: kSubTextStyle.copyWith(
                                  fontSize: 12, color: Colors.black),
                            )
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 14.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Icon(Icons.timer),
                          const SizedBox(
                            width: 4.0,
                          ),
                          Text(
                            recipe.time,
                            style: const TextStyle(fontSize: 13),
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          Icon(Icons.local_fire_department),
                          const SizedBox(
                            width: 4.0,
                          ),
                          Text(
                            recipe.calorie,
                            style: TextStyle(fontSize: 13),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 14.0),
                      child: Text(
                        "Untuk ${recipe.portion} Porsi",
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 18.0),
                      child: Text(
                        "Proses",
                        style: kTitleTextStyle.copyWith(fontSize: 16.0),
                      ),
                    ),
                    Column(
                      children: [
                        ListView.builder(
                          primary: false,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return ProcessListItem(
                                index: index + 1,
                                process: recipe.process[index]);
                          },
                          itemCount: recipe.process.length,
                        ),
                      ],
                    )
                  ],
                ),
              )
            ]),
          ),
          TopButton(),
        ],
      ),
    );
  }
}

class ProcessListItem extends StatelessWidget {
  final String process;
  final int index;

  const ProcessListItem({Key? key, required this.process, required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 14.0),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(12.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      color: navbarColor,
                    ),
                  ),
                  Text(
                    '$index',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                  ),
                ],
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    process,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 10,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class TopButton extends StatelessWidget {
  const TopButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 15.0, left: 20, right: 20),
        child: Row(
          children: const [
            IconCustom(
              icon: Icon(Icons.arrow_back),
              iconColor: Colors.white,
            ),
          ],
        ),
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
      decoration: const BoxDecoration(
        color: navbarColor,
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: icon,
        color: iconColor,
        iconSize: 24,
      ),
    );
  }
}
