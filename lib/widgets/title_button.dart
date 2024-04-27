import 'package:flutter/material.dart';
import 'package:writable_fl/utils/style_constants.dart';
import 'package:writable_fl/utils/theme_constants.dart';

class TitleButton extends StatelessWidget {
  const TitleButton({super.key, required this.content, required this.onTap});

  final String content;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: StyleConstants.bigPadding,
      ),
      child: GestureDetector(
        onTap: onTap,
        child: Text(
          content,
          style: TextStyle(
            color: ThemeConstants.activeTextColor,
            fontSize: StyleConstants.sectionTitleSize,
          ),
        ),
      ),
    );
  }
}
