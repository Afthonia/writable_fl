import 'package:flutter/material.dart';
import 'package:writable_fl/utils/style_constants.dart';
import 'package:writable_fl/utils/theme_constants.dart';

class NormalTextfield extends StatelessWidget {
  const NormalTextfield({super.key, this.hintText});

  final String? hintText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: StyleConstants.smallPadding),
      child: TextField(
        style: TextStyle(
          color: ThemeConstants.activeTextColor,
        ),
        decoration: InputDecoration(
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: ThemeConstants.strokeColor,
            ),
          ),
          focusedBorder: UnderlineInputBorder(
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
