import 'package:flutter/material.dart';
import 'package:writable_fl/utils/style_constants.dart';
import 'package:writable_fl/utils/theme_constants.dart';

class AuthorTitleBadge extends StatelessWidget {
  const AuthorTitleBadge({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: StyleConstants.smallPadding,
        top: 3, //?
      ),
      child: Container(
        decoration: BoxDecoration(
          color: ThemeConstants.activeColor.withOpacity(0.25),
          borderRadius: BorderRadius.circular(
            StyleConstants.smallRadius,
          ),
          border: Border.all(
            color: ThemeConstants.activeColor.withOpacity(0.6),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: StyleConstants.smallPadding,
          ),
          child: Text(
            "#$title",
            style: TextStyle(
              color: ThemeConstants.almostFadingTextColor,
              fontSize: StyleConstants.smallText,
            ),
          ),
        ),
      ),
    );
  }
}
