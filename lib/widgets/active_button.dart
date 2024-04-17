import 'package:flutter/material.dart';
import 'package:writable_fl/utils/style_constants.dart';

class ActiveButton extends StatelessWidget {
  const ActiveButton(
      {super.key, required this.content, required this.onTap, this.hPad = 0.0});

  final String content;
  final void Function()? onTap;
  final double hPad;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: StyleConstants.smallPadding, horizontal: hPad),
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF866B37),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(StyleConstants.smallRadius),
          ),
        ),
        child: Text(
          content,
          style: const TextStyle(
            color: Color(0xFFFFFFFF),
          ),
        ),
      ),
    );
  }
}
