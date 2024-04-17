import 'package:flutter/material.dart';
import 'package:writable_fl/utils/style_constants.dart';
import 'package:writable_fl/utils/theme_constants.dart';

class BoxTextfield extends StatelessWidget {
  const BoxTextfield({super.key, this.hintText});

  final String? hintText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: StyleConstants.smallPadding,
      ),
      child: TextField(
        style: TextStyle(
          color: ThemeConstants.activeTextColor,
        ),
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              StyleConstants.smallRadius,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: ThemeConstants.strokeColor,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: ThemeConstants.strokeColor,
            ),
          ),
          hintText: hintText,
          hintStyle: TextStyle(
            color: ThemeConstants.fadingTextColor,
          ),
        ),
      ),
    );
  }
}
