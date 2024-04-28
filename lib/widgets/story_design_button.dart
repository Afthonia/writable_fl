import 'package:flutter/material.dart';
import 'package:writable_fl/utils/style_constants.dart';
import 'package:writable_fl/utils/theme_constants.dart';

class StoryDesignButton extends StatelessWidget {
  const StoryDesignButton(
      {super.key,
      required this.onTap,
      required this.content,
      this.icon,
      this.contentSize = 14.0,
      this.contentWeight = FontWeight.normal});

  final VoidCallback onTap;
  final String content;
  final Widget? icon;
  final double contentSize;
  final FontWeight contentWeight;

  @override
  Widget build(BuildContext context) {
    return icon != null
        ? Padding(
            padding: EdgeInsets.symmetric(
              vertical: StyleConstants.mediumPadding,
              horizontal: StyleConstants.bigPadding,
            ),
            child: ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: ThemeConstants.thirdColor.withOpacity(0.4),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    StyleConstants.smallRadius,
                  ),
                ),
                alignment: Alignment.centerLeft,
              ),
              icon: Padding(
                padding: EdgeInsets.only(
                  left: StyleConstants.smallPadding,
                  right: StyleConstants.mediumPadding,
                ),
                child: icon!,
              ),
              onPressed: onTap,
              label: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: StyleConstants.bigPadding,
                ),
                child: Text(
                  content,
                  style: TextStyle(
                    color: ThemeConstants.activeTextColor,
                    fontSize: contentSize,
                    fontWeight: contentWeight,
                  ),
                ),
              ),
            ),
          )
        : Padding(
            padding: EdgeInsets.symmetric(
              vertical: StyleConstants.mediumPadding,
              horizontal: StyleConstants.bigPadding,
            ),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: ThemeConstants.thirdColor.withOpacity(0.4),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    StyleConstants.smallRadius,
                  ),
                ),
                alignment: Alignment.centerLeft,
              ),
              onPressed: onTap,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: StyleConstants.bigPadding,
                ),
                child: Text(
                  content,
                  style: TextStyle(
                    color: ThemeConstants.activeTextColor,
                    fontSize: contentSize,
                    fontWeight: contentWeight,
                  ),
                ),
              ),
            ),
          );
  }
}
