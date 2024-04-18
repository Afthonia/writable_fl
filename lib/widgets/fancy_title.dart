import 'package:flutter/material.dart';

class FancyTitle extends StatelessWidget {
  const FancyTitle({super.key, required this.content, this.fontSize = 27.0});

  final String content;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      textAlign: TextAlign.center,
      softWrap: true,
      style: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: fontSize,
        color: Colors.white,
        shadows: const [
          Shadow(
              color: Colors.black, blurRadius: 10.0, offset: Offset(4.0, 5.0))
        ],
      ),
    );
  }
}
