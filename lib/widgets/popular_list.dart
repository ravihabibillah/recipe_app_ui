import 'package:flutter/material.dart';
import 'package:recipe_app_ui/constant.dart';
import 'package:recipe_app_ui/model/food_recipe.dart';
import 'package:recipe_app_ui/recipe_detail.dart';
import 'package:recipe_app_ui/widgets/recipe_card.dart';

class ListPopular extends StatefulWidget {
  const ListPopular({
    Key? key,
  }) : super(key: key);

  @override
  State<ListPopular> createState() => _ListPopularState();
}

class _ListPopularState extends State<ListPopular> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth <= 800) {
          return RecipePopularListView();
        } else if (constraints.maxWidth <= 1100) {
          return RecipePopularGridView(gridCount: 3);
        } else {
          return RecipePopularGridView(gridCount: 4);
        }
      }),
    );
  }
}

class RecipePopularListView extends StatelessWidget {
  const RecipePopularListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Resep Populer",
            style: kTitleTextStyle.copyWith(fontSize: 18),
          ),
          ListView.builder(
            primary: false,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              final FoodRecipe recipe = foodRecipeList[index];
              return InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return RecipeDetail(recipe: recipe);
                  }));
                },
                child: RecipeCard(
                  image: recipe.imageAsset,
                  name: recipe.name,
                  rating: recipe.rating,
                  total: recipe.totalRate,
                  time: recipe.time,
                  publisherAvatar: recipe.publisherAvatar,
                  process: recipe.process,
                ),
              );
            },
            itemCount: foodRecipeList.length,
          ),
        ],
      ),
    );
  }
}

class RecipePopularGridView extends StatelessWidget {
  final int gridCount;

  const RecipePopularGridView({Key? key, required this.gridCount})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      isAlwaysShown: true,
      child: GridView.count(
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        crossAxisCount: gridCount,
        children: foodRecipeList.map((recipe) {
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return RecipeDetail(recipe: recipe);
              }));
            },
            child: RecipeCard(
              image: recipe.imageAsset,
              name: recipe.name,
              rating: recipe.rating,
              total: recipe.totalRate,
              time: recipe.time,
              publisherAvatar: recipe.publisherAvatar,
              process: recipe.process,
            ),
          );
        }).toList(),
      ),
    );
  }
}
