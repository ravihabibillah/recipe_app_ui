import 'package:flutter/material.dart';

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
              SizedBox(
                width: 10,
              ),
              Text(
                "Hai, Rafi Aulia",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              Icon(
                Icons.arrow_right,
                size: 30,
              )
            ],
          ),
          Spacer(),
          Icon(Icons.search),
          SizedBox(width: 10),
          Icon(Icons.light_mode)
        ],
      ),
    );
  }
}
