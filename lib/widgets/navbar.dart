import 'package:flutter/material.dart';
import 'package:recipe_app_ui/constant.dart';

class Navbar extends StatelessWidget {
  const Navbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(30),
          topLeft: Radius.circular(30),
        ),
        boxShadow: [
          BoxShadow(color: Colors.grey, blurRadius: 3),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(30),
          topLeft: Radius.circular(30),
        ),
        child: BottomNavigationBar(
          unselectedItemColor: navbarColor,
          selectedItemColor: navbarColor,
          currentIndex: 0,
          showSelectedLabels: false,
          elevation: 3,
          // onTap: onTabTapped,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined, size: 35),
              label: "Home",
              activeIcon: Column(
                children: [
                  Icon(Icons.home, size: 35),
                  Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: navbarColor),
                  )
                ],
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.bookmark_outline,
                size: 35,
              ),
              label: "Saved",
              activeIcon: Column(
                children: [
                  Icon(Icons.bookmark, size: 35),
                  Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: navbarColor),
                  )
                ],
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined, size: 35),
              label: "Cart",
              activeIcon: Column(
                children: [
                  Icon(Icons.shopping_cart, size: 35),
                  Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: navbarColor),
                  )
                ],
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline, size: 35),
              label: "Account",
              activeIcon: Column(
                children: [
                  Icon(Icons.person, size: 35),
                  Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: navbarColor),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
