import 'package:flutter/material.dart';
import 'package:writable_fl/utils/theme_constants.dart';

class StoryDesignButton extends StatelessWidget {
  const StoryDesignButton(
      {super.key, required this.onTap, required this.content, this.icon});

  final VoidCallback onTap;
  final String content;
  final Widget? icon;

  @override
  Widget build(BuildContext context) {
    return icon != null
        ? ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              backgroundColor: ThemeConstants.thirdColor.withOpacity(0.4),
            ),
            icon: icon!,
            onPressed: onTap,
            label: Text(
              content,
              style: TextStyle(
                color: ThemeConstants.activeTextColor,
              ),
            ),
          )
        : ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: ThemeConstants.thirdColor.withOpacity(0.4),
            ),
            onPressed: onTap,
            child: Text(content,
              style: TextStyle(
                color: ThemeConstants.activeTextColor,
              ),
            ),
          );
  }
}
