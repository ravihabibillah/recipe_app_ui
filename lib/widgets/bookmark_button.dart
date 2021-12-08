import 'package:flutter/material.dart';

class BookmarkButton extends StatefulWidget {
  const BookmarkButton({
    Key? key,
  }) : super(key: key);

  @override
  State<BookmarkButton> createState() => _BookmarkButtonState();
}

class _BookmarkButtonState extends State<BookmarkButton> {
  bool isBookmark = false;
  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          setState(() {
            isBookmark = !isBookmark;
          });
        },
        icon: Icon(isBookmark ? Icons.bookmark : Icons.bookmark_border));
  }
}
