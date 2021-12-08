import 'package:flutter/material.dart';
import 'package:recipe_app_ui/search_list.dart';

import 'image_circle.dart';

class myHeader extends StatelessWidget {
  const myHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        children: [
          Row(
            children: [
              ImageCircle(
                imageUrl: "assets/images/profile.jpg",
                image_height: 40,
                image_width: 40,
              ),
              const SizedBox(
                width: 10,
              ),
              const Text(
                "Hai, M Ravi Habibillah",
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              const Icon(
                Icons.arrow_right,
                size: 30,
              )
            ],
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
