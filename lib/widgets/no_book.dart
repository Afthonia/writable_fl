import 'package:flutter/material.dart';
import 'package:writable_fl/utils/style_constants.dart';
import 'package:writable_fl/utils/theme_constants.dart';

class NoBook extends StatelessWidget {
  const NoBook({super.key, required this.content});

  final String? content;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 165,
      width: 105,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(StyleConstants.smallRadius),
        border: Border.all(
          color: ThemeConstants.activeColor,
          width: 2,
        ),
        color: ThemeConstants.activeColor.withOpacity(0.4),
      ),
      child: Center(
        child: Text(
          content ?? "No Book",
          softWrap: true,
          maxLines: 4,
          textAlign: TextAlign.center,
          overflow: TextOverflow.fade,
          style: TextStyle(
            color: ThemeConstants.activeTextColor,
          ),
        ),
      ),
    );
  }
}
