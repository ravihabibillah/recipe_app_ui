import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constant.dart';

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
